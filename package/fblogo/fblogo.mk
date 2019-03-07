FBLOGO_VERSION = 2bb6674e8052b5478885e7c63af0f9fff4210763
FBLOGO_LICENSE = GPL-3.0+
FBLOGO_SITE = https://github.com/jmore-reachtech/reach-fblogo.git
FBLOGO_SITE_METHOD = git
FBLOGO_CONF_OPTS = --prefix=/usr
FBLOGO_AUTORECONF = yes

define FBLOGO_PRE_CONFIGURE_AUTOGEN
	cd $(@D) && PATH=$(BR_PATH) ./autogen.sh
endef

FBLOGO_PRE_CONFIGURE_HOOKS += FBLOGO_PRE_CONFIGURE_AUTOGEN

$(eval $(autotools-package))
