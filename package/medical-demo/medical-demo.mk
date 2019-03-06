MEDICAL_DEMO_VERSION = 44f61058624a6f85fcb5087bd1e0cc52a296a985
MEDICAL_DEMO_LICENSE = GPL-3.0+
MEDICAL_DEMO_SITE = $(call github,jmore-reachtech,reach-qml-medical,$(MEDICAL_DEMO_VERSION))
MEDICAL_DEMO_DEPENDENCIES = 

define MEDICAL_DEMO_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/data/app
	cp -r $(@D)/* $(TARGET_DIR)/data/app
endef

$(eval $(generic-package))

