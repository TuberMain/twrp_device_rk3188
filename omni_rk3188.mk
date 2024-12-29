#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from rk3188 device
$(call inherit-product, device/rockchip/rk3188/device.mk)

PRODUCT_DEVICE := rk3188
PRODUCT_NAME := omni_rk3188
PRODUCT_BRAND := rockchip
PRODUCT_MODEL := U19
PRODUCT_MANUFACTURER := rockchip

PRODUCT_GMS_CLIENTID_BASE := android-rockchip

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rk3188-eng 4.4.2 KOT49H eng.zeng.20161020.092901 test-keys"

BUILD_FINGERPRINT := rockchip/rk3188/rk3188:4.4.2/KOT49H/eng.zeng.20161020.092901:eng/test-keys
