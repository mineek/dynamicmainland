TARGET := iphone:clang:14.5:14.0

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = dynamicmainlandprefs

dynamicmainlandprefs_FILES = DMLRootListController.m
dynamicmainlandprefs_FRAMEWORKS = UIKit
dynamicmainlandprefs_PRIVATE_FRAMEWORKS = Preferences
dynamicmainlandprefs_INSTALL_PATH = /Library/PreferenceBundles
dynamicmainlandprefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
