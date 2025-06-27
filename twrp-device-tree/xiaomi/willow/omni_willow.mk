#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from willow device
$(call inherit-product, device/xiaomi/willow/device.mk)

PRODUCT_DEVICE := willow
PRODUCT_NAME := omni_willow
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Redmi Note 8T
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="willow-user 10 QKQ1.200114.002 V12.0.4.0.QCXMIXM release-keys"

BUILD_FINGERPRINT := xiaomi/willow/willow:10/QKQ1.200114.002/V12.0.4.0.QCXMIXM:user/release-keys
