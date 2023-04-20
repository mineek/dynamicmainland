TARGET := iphone:clang:14.5:14.0
INSTALL_TARGET_PROCESSES = SpringBoard
THEOS_PACKAGE_SCHEME=rootless

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = dynamicmainland

dynamicmainland_FILES = $(wildcard *.xm)
dynamicmainland_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += dynamicmainlandprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
