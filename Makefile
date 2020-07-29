include $(THEOS)/makefiles/common.mk

TWEAK_NAME = DockInSwitcher
DockInSwitcher_FILES = Tweak.xm
export ARCHS = arm64e arm64 armv7

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += dockinswitcher
include $(THEOS_MAKE_PATH)/aggregate.mk
