TARGET := iphone:clang:latest:14.0
INSTALL_TARGET_PROCESSES = SpringBoard

DEBUG=0
FINALPACKAGE=1

PREFIX=$(THEOS)/toolchain/Xcode.xctoolchain/usr/bin/

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = WidgetRadius

WidgetRadius_FILES = Tweak.xm
WidgetRadius_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
