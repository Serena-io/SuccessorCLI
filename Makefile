THEOS_DEVICE_IP = localhost
THEOS_DEVICE_PORT = 2222

TARGET := iphone:clang:latest:13.5

include $(THEOS)/makefiles/common.mk

TOOL_NAME = successorcli

successorcli_FILES = $(wildcard src/*.swift)
successorcli_SWIFT_BRIDGING_HEADER = src/Bridge.h
#successorcli_LDFLAGS = $(wildcard src/libs/*.tbd)
successorcli_PRIVATE_FRAMEWORKS = DiskImages2 SpringBoardServices
successorcli_CODESIGN_FLAGS = -Sentitlements.plist
successorcli_INSTALL_PATH = /usr/sbin
include $(THEOS_MAKE_PATH)/tool.mk


