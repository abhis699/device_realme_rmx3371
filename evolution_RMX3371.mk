#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from RMX3371 device
$(call inherit-product, device/realme/RMX3371/device.mk)

# Inherit some common Project Elixir stuff
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_PIXEL_CHARGER := true
TARGET_SUPPORTS_QUICK_TAP := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_SUPPORTS_TOUCHGESTURES := true
TARGET_USES_PICO_GAPPS := true

PRODUCT_NAME := evolution_RMX3371
PRODUCT_DEVICE := RMX3371
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3371

PRODUCT_SYSTEM_NAME := RMX3371
PRODUCT_SYSTEM_DEVICE := RE54E4L1

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX3371-user 13 TP1A.220905.001 S.12f3337_8494f-2 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := realme/RMX3371/RE54E4L1:13/TP1A.220905.001/S.12f3337_8494f-2:user/release-keys
