#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/bonito/aosp_sargo.mk)

include device/google/bonito/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3a
PRODUCT_NAME := lineage_sargo

WITH_GAPPS := true

# Valid for core/full GAPPS (default=true)
TARGET_USE_GOOGLE_TELEPHONY := true

# Alpha internal properties
TARGET_HAS_UDFPS := false
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_MATLOG := true
TARGET_USE_PIXEL_LAUNCHER := false
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true
ALPHA_MAINTAINER := NexiaMoe
TARGET_SUPPORTS_QUICK_TAP := true
USE_PIXEL_CHARGING := true
ALPHA_BUILD_TYPE := UNOFFICIAL

TARGET_INCLUDE_GOOGLE_APP := true
TARGET_INCLUDE_GOOGLE_CALCULATOR := true
TARGET_INCLUDE_GOOGLE_CALENDAR := true
TARGET_INCLUDE_GOOGLE_CHROME := true
TARGET_INCLUDE_GOOGLE_DESKCLOCK := true
TARGET_INCLUDE_GOOGLE_DRIVE := true
TARGET_INCLUDE_GMAIL := true
TARGET_INCLUDE_GOOGLE_MAPS := true
TARGET_INCLUDE_GOOGLE_PHOTOS := true
TARGET_INCLUDE_GOOGLE_SETUP := true

TARGET_DEFAULT_ADB_ENABLED := true

TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

PRODUCT_PRODUCT_PROPERTIES += \
  ro.control_privapp_permissions=log \
  ro.adb.secure=0 \
  persist.sys.usb.config=mtp,adb \
  persist.service.debuggable=1 \
  persist.service.adb.enable=1

PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true

# # Boot animation
# TARGET_SCREEN_HEIGHT := 2220
# TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=sargo \
    PRIVATE_BUILD_DESC="sargo-user 12 SP2A.220505.008 8782922 release-keys"

BUILD_FINGERPRINT := google/sargo/sargo:12/SP2A.220505.008/8782922:user/release-keys

$(call inherit-product, vendor/google/sargo/sargo-vendor.mk)
