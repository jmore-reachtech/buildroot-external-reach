QML_VIEWER_VERSION = 80cce2fb737420a22711d4f345540903332d3f87
QML_VIEWER_LICENSE = GPL-3.0+
QML_VIEWER_SITE = https://github.com/jmore-reachtech/reach-qml-viewer-g3.git
QML_VIEWER_SITE_METHOD = git
QML_VIEWER_DEPENDENCIES = qt5base qt5declarative qt5serialport

define QML_VIEWER_CONFIGURE_CMDS
	(cd $(@D); $(TARGET_MAKE_ENV) $(QT5_QMAKE))
endef

define QML_VIEWER_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define QML_VIEWER_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/qml-viewer $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
