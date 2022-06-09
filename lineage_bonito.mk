#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/bonito/aosp_bonito.mk)

include device/google/bonito/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3a XL
PRODUCT_NAME := lineage_bonito

# GAPPS_BUILD_TYPE
# 0 - NO GAPPS (DEFAULT)
# 1 - CORE GAPPS
# 2 - FULL GAPPS
WITH_GAPPS := 2

# Valid for core/full GAPPS (default=true)
TARGET_USE_GOOGLE_TELEPHONY := true

# Alpha internal properties
TARGET_HAS_UDFPS := false
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_MATLOG := false
TARGET_USE_PIXEL_LAUNCHER := false
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := false
ALPHA_MAINTAINER := NexiaMoe
TARGET_SUPPORTS_QUICK_TAP := true
USE_PIXEL_CHARGING := true
ALPHA_BUILD_TYPE := UNOFFICIAL


# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT==bonito \
    PRIVATE_BUILD_DESC="bonito-user 12 SP2A.220505.008 8782922 release-keys"

BUILD_FINGERPRINT := google/bonito/bonito:12/SP2A.220505.008/8782922:user/release-keys

$(call inherit-product, vendor/google/bonito/bonito-vendor.mk)
