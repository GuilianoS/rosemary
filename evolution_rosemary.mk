#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Inherit from rosemary device
$(call inherit-product, device/xiaomi/rosemary/device.mk)

PRODUCT_DEVICE := rosemary
PRODUCT_NAME := evolution_rosemary
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2101K7BNY
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rosemary-user 11 RP1A.200720.011 V12.5.16.0.RKLMIXM release-keys"

BUILD_FINGERPRINT := Redmi/rosemary_global/rosemary:11/RP1A.200720.011/V12.5.16.0.RKLMIXM:user/release-keys