#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from gta7litewifi device
$(call inherit-product, device/samsung/gta7litewifi/device.mk)

PRODUCT_DEVICE := gta7litewifi
PRODUCT_NAME := twrp_gta7litewifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T220
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gta7litewifixx-user 12 SP1A.210812.016 T220XXU2CWB3 release-keys"

BUILD_FINGERPRINT := samsung/gta7litewifixx/gta7litewifi:12/SP1A.210812.016/T220XXU2CWB3:user/release-keys

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/gta7litewifi/recovery/root,recovery/root)
