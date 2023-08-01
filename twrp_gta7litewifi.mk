#
# Copyright (C) 2020 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common TWRP stuff.
# For PitchBlack use vendor/pb/config/common.mk
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/gta7litewifi/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gta7litewifi
PRODUCT_NAME := twrp_gta7litewifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T220
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gta7litewifixx-user 12 SP1A.210812.016 T220XXU1CVL7 release-keys"

BUILD_FINGERPRINT := samsung/gta7litewifixx/gta7litewifi:12/SP1A.210812.016/T220XXU1CVL7:user/release-keys
