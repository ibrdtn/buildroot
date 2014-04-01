#############################################################
#
# ibrdtnd
#
#############################################################
IBRDTND_VERSION:=0.12.0
IBRDTND_SOURCE:=ibrdtnd-$(IBRDTND_VERSION).tar.gz
IBRDTND_SITE:=http://www.ibr.cs.tu-bs.de/projects/ibr-dtn/releases
IBRDTND_LIBTOOL_PATCH:=NO
IBRDTND_DEPENDENCIES:=dtndht ibrcommon ibrdtn libdaemon openssl zlib sqlite
IBRDTND_INSTALL_STAGING:=YES
IBRDTND_INSTALL_TARGET:=YES

ifeq ($(BR2_PREFER_STATIC_LIB),y)
IBRDTND_MAKE_OPT += LDFLAGS+="-all-static"
endif

IBRDTND_CONF_OPT =	\
		--with-sqlite \
		--with-dtnsec \
		--with-compression \
		--with-tls
		

$(eval $(autotools-package))
