# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := node_rpi
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=node_rpi' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-Wno-cast-function-type \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++1y

INCS_Debug := \
	-I/home/pi/.cache/node-gyp/12.13.0/include/node \
	-I/home/pi/.cache/node-gyp/12.13.0/src \
	-I/home/pi/.cache/node-gyp/12.13.0/deps/openssl/config \
	-I/home/pi/.cache/node-gyp/12.13.0/deps/openssl/openssl/include \
	-I/home/pi/.cache/node-gyp/12.13.0/deps/uv/include \
	-I/home/pi/.cache/node-gyp/12.13.0/deps/zlib \
	-I/home/pi/.cache/node-gyp/12.13.0/deps/v8/include \
	-I$(srcdir)/../nan

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=node_rpi' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-Wno-cast-function-type \
	-O3 \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++1y

INCS_Release := \
	-I/home/pi/.cache/node-gyp/12.13.0/include/node \
	-I/home/pi/.cache/node-gyp/12.13.0/src \
	-I/home/pi/.cache/node-gyp/12.13.0/deps/openssl/config \
	-I/home/pi/.cache/node-gyp/12.13.0/deps/openssl/openssl/include \
	-I/home/pi/.cache/node-gyp/12.13.0/deps/uv/include \
	-I/home/pi/.cache/node-gyp/12.13.0/deps/zlib \
	-I/home/pi/.cache/node-gyp/12.13.0/deps/v8/include \
	-I$(srcdir)/../nan

OBJS := \
	$(obj).target/$(TARGET)/src/rpi.o \
	$(obj).target/$(TARGET)/src/node_rpi.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic

LDFLAGS_Release := \
	-pthread \
	-rdynamic

LIBS :=

$(obj).target/node_rpi.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/node_rpi.node: LIBS := $(LIBS)
$(obj).target/node_rpi.node: TOOLSET := $(TOOLSET)
$(obj).target/node_rpi.node: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(obj).target/node_rpi.node
# Add target alias
.PHONY: node_rpi
node_rpi: $(builddir)/node_rpi.node

# Copy this to the executable output path.
$(builddir)/node_rpi.node: TOOLSET := $(TOOLSET)
$(builddir)/node_rpi.node: $(obj).target/node_rpi.node FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/node_rpi.node
# Short alias for building this executable.
.PHONY: node_rpi.node
node_rpi.node: $(obj).target/node_rpi.node $(builddir)/node_rpi.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/node_rpi.node

