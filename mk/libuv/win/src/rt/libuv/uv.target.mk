# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := uv
DEFS_Default := '-DHAVE_CONFIG_H' \
	'-D_WIN32_WINNT=0x0502' \
	'-DEIO_STACKSIZE=262144' \
	'-D_GNU_SOURCE'

# Flags passed to all source files.
CFLAGS_Default := 

# Flags passed to only C files.
CFLAGS_C_Default := 

# Flags passed to only C++ files.
CFLAGS_CC_Default := 

INCS_Default := -I$(srcdir)/src/rt/libuv/include \
	-I$(srcdir)/src/rt/libuv/include/uv-private \
	-I$(srcdir)/src/rt/libuv/src \
	-I$(srcdir)/src/rt/libuv/src/ares/config_win32

OBJS := $(obj).target/$(TARGET)/src/rt/libuv/src/uv-common.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares__close_sockets.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares__get_hostent.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares__read_line.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares__timeval.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_cancel.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_data.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_destroy.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_expand_name.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_expand_string.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_fds.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_free_hostent.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_free_string.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_gethostbyaddr.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_gethostbyname.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_getnameinfo.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_getopt.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_getsock.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_init.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_library_init.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_llist.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_mkquery.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_nowarn.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_options.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_parse_a_reply.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_parse_aaaa_reply.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_parse_mx_reply.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_parse_ns_reply.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_parse_ptr_reply.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_parse_srv_reply.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_parse_txt_reply.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_process.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_query.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_search.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_send.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_strcasecmp.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_strdup.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_strerror.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_timeout.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_version.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/ares_writev.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/bitncmp.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/inet_net_pton.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/inet_ntop.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/ares/windows_port.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/win/async.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/win/cares.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/win/core.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/win/error.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/win/fs.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/win/getaddrinfo.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/win/handle.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/win/loop-watcher.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/win/pipe.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/win/process.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/win/req.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/win/stdio.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/win/stream.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/win/tcp.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/win/tty.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/win/threadpool.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/win/threads.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/win/timer.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/win/udp.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/win/util.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/win/winapi.o \
	$(obj).target/$(TARGET)/src/rt/libuv/src/win/winsock.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE)) $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE)) $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Default := 

LIBS := 

$(obj).target/src/rt/libuv/libuv.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/src/rt/libuv/libuv.a: LIBS := $(LIBS)
$(obj).target/src/rt/libuv/libuv.a: TOOLSET := $(TOOLSET)
$(obj).target/src/rt/libuv/libuv.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink)

all_deps += $(obj).target/src/rt/libuv/libuv.a
# Add target alias
.PHONY: uv
uv: $(obj).target/src/rt/libuv/libuv.a

# Add target alias to "all" target.
.PHONY: all
all: uv

