use common::*;
use syntax::ast;
use syntax::ast_util::local_def;
use syntax::ast_map::{path, path_mod, path_name};
use base::{trans_item, get_item_val, self_arg, trans_fn,
              impl_self, get_insn_ctxt};

fn maybe_instantiate_inline(ccx: @crate_ctxt, fn_id: ast::def_id)
    -> ast::def_id
{
    let _icx = ccx.insn_ctxt("maybe_instantiate_inline");
    match ccx.external.find(fn_id) {
      Some(Some(node_id)) => {
        // Already inline
        debug!("maybe_instantiate_inline(%s): already inline as node id %d",
               ty::item_path_str(ccx.tcx, fn_id), node_id);
        local_def(node_id)
      }
      Some(None) => fn_id, // Not inlinable
      None => { // Not seen yet
        match csearch::maybe_get_item_ast(
            ccx.tcx, fn_id,
            |a,b,c,d| {
                astencode::decode_inlined_item(a, b, ccx.maps, c, d)
            }) {

          csearch::not_found => {
            ccx.external.insert(fn_id, None);
            fn_id
          }
          csearch::found(ast::ii_item(item)) => {
            ccx.external.insert(fn_id, Some(item.id));
            ccx.stats.n_inlines += 1;
            trans_item(ccx, *item);
            local_def(item.id)
          }
          csearch::found(ast::ii_foreign(item)) => {
            ccx.external.insert(fn_id, Some(item.id));
            local_def(item.id)
          }
          csearch::found_parent(parent_id, ast::ii_item(item)) => {
            ccx.external.insert(parent_id, Some(item.id));
            let mut my_id = 0;
            match item.node {
              ast::item_enum(_, _) => {
                let vs_here = ty::enum_variants(ccx.tcx, local_def(item.id));
                let vs_there = ty::enum_variants(ccx.tcx, parent_id);
                for vec::each2(*vs_here, *vs_there) |here, there| {
                    if there.id == fn_id { my_id = here.id.node; }
                    ccx.external.insert(there.id, Some(here.id.node));
                }
              }
              _ => ccx.sess.bug(~"maybe_instantiate_inline: item has a \
                    non-enum parent")
            }
            trans_item(ccx, *item);
            local_def(my_id)
          }
          csearch::found_parent(_, _) => {
              ccx.sess.bug(~"maybe_get_item_ast returned a found_parent \
               with a non-item parent");
          }
          csearch::found(ast::ii_method(impl_did, mth)) => {
            ccx.stats.n_inlines += 1;
            ccx.external.insert(fn_id, Some(mth.id));
            let {bounds: impl_bnds, region_param: _, ty: impl_ty} =
                ty::lookup_item_type(ccx.tcx, impl_did);
            if (*impl_bnds).len() + mth.tps.len() == 0u {
                let llfn = get_item_val(ccx, mth.id);
                let path = vec::append(
                    ty::item_path(ccx.tcx, impl_did),
                    ~[path_name(mth.ident)]);
                trans_fn(ccx, path, mth.decl, mth.body,
                         llfn, impl_self(impl_ty), None, mth.id);
            }
            local_def(mth.id)
          }
          csearch::found(ast::ii_dtor(dtor, _, _, _)) => {
              ccx.external.insert(fn_id, Some(dtor.node.id));
              local_def(dtor.node.id)
          }
        }
      }
    }
}
