include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = DockInSwitcher
DockInSwitcher_FILES = XXXRootListController.m
DockInSwitcher_INSTALL_PATH = /Library/PreferenceBundles
DockInSwitcher_FRAMEWORKS = UIKit
DockInSwitcher_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/DockInSwitcher.plist$(ECHO_END)
