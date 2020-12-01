LOCAL_PATH := $(call my-dir)

# Aurora Services | https://gitlab.com/AuroraOSS/AuroraServices
include $(CLEAR_VARS)
LOCAL_MODULE := privapp-permissions-auroraservices.xml
LOCAL_SRC_FILES := apk/permissions/$(LOCAL_MODULE)
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/permissions
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := AuroraServices
LOCAL_SRC_FILES := apk/AuroraServices.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_DEX_PREOPT := false
LOCAL_REQUIRED_MODULES := privapp-permissions-auroraservices.xml
include $(BUILD_PREBUILT)

# Aurora Store | https://gitlab.com/AuroraOSS/AuroraStore
include $(CLEAR_VARS)
LOCAL_MODULE := AuroraStore
LOCAL_SRC_FILES := apk/AuroraStore.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_DEX_PREOPT := false
LOCAL_REQUIRED_MODULES := AuroraServices
include $(BUILD_PREBUILT)

# MicroG | https://github.com/microg/android_packages_apps_GmsCore
include $(CLEAR_VARS)
LOCAL_MODULE := GmsCore
LOCAL_SRC_FILES := apk/GmsCore.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_DEX_PREOPT := false
LOCAL_REQUIRED_MODULES := FakeStore
include $(BUILD_PREBUILT)

# FakeStore | https://github.com/microg/android_packages_apps_FakeStore
include $(CLEAR_VARS)
LOCAL_MODULE := FakeStore
LOCAL_SRC_FILES := apk/FakeStore.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_DEX_PREOPT := false
LOCAL_REQUIRED_MODULES := GsfProxy
include $(BUILD_PREBUILT)

# NetworkLocation | https://github.com/microg/UnifiedNlp
include $(CLEAR_VARS)
LOCAL_MODULE := NetworkLocation
LOCAL_SRC_FILES := apk/NetworkLocation.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_DEX_PREOPT := false
LOCAL_REQUIRED_MODULES := GsfProxy
include $(BUILD_PREBUILT)

# UnifiedNlp | https://github.com/microg/UnifiedNlp
include $(CLEAR_VARS)
LOCAL_MODULE := UnifiedNlp
LOCAL_SRC_FILES := apk/UnifiedNlp.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_DEX_PREOPT := false
LOCAL_REQUIRED_MODULES := GsfProxy
include $(BUILD_PREBUILT)

# GsfProxy | https://github.com/microg/android_packages_apps_GsfProxy
include $(CLEAR_VARS)
LOCAL_MODULE := GsfProxy
LOCAL_SRC_FILES := apk/GsfProxy.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_DEX_PREOPT := false
LOCAL_REQUIRED_MODULES := privapp-permissions-microg.xml
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := privapp-permissions-microg.xml
LOCAL_SRC_FILES := apk/permissions/$(LOCAL_MODULE)
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/permission
LOCAL_REQUIRED_MODULES := microg-power-whitelist.xml
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := microg-power-whitelist.xml
LOCAL_SRC_FILES := apk/permissions/$(LOCAL_MODULE)
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/sysconfig
include $(BUILD_PREBUILT)
