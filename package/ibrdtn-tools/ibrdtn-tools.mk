#############################################################
#
# ibrdtn-tools
#
#############################################################
IBRDTN_TOOLS_VERSION:=0.10.2
IBRDTN_TOOLS_SOURCE:=ibrdtn-tools-$(IBRDTN_TOOLS_VERSION).tar.gz
IBRDTN_TOOLS_SITE:=http://www.ibr.cs.tu-bs.de/projects/ibr-dtn/releases
IBRDTN_TOOLS_LIBTOOL_PATCH:=NO
IBRDTN_TOOLS_DEPENDENCIES:=ibrcommon ibrdtn
IBRDTN_TOOLS_INSTALL_STAGING:=YES
IBRDTN_TOOLS_INSTALL_TARGET:=YES

ifeq ($(BR2_PREFER_STATIC_LIB),y)
IBRDTN_TOOLS_MAKE_OPT += LDFLAGS+="-all-static"
IBRDTN_TOOLS_CONF_OPT += LIBS='-lpthread'
endif

$(eval $(autotools-package))

