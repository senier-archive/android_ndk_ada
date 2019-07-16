LOCAL_PATH:= $(call my-dir)
TARGET_ARCH := x86_64

include $(CLEAR_VARS)

LOCAL_PATH = src
LOCAL_CFLAGS += -Wall
LOCAL_LDLIBS := -L$(LOCAL_PATH)/lib -llog -g

LOCAL_C_INCLUDES := bionic
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include

LOCAL_SRC_FILES := main.c
LOCAL_MODULE    := hello

LOCAL_STATIC_LIBRARIES := program

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_PATH = .
LOCAL_MODULE := program
LOCAL_SRC_FILES := obj/program.a

include $(PREBUILT_STATIC_LIBRARY)

