#
# Copyright (C) 2017-2019,2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from capricorn device
$(call inherit-product, device/xiaomi/capricorn/device.mk)

# Inherit some common RisingOS stuff.
$(call inherit-product, vendor/rising/config/rising.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := rising_capricorn
PRODUCT_DEVICE := capricorn
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 5s
PRODUCT_MANUFACTURER := Xiaomi

# RisingOS Specific Settings.
TARGET_PREBUILT_PIXEL_LAUNCHER := true
TARGET_ENABLE_PIXEL_FEATURES := true
TARGET_USE_GOOGLE_TELEPHONY := true
RISING_STORAGE := 64GB
RISING_RAM := 3GB
RISING_BATTERY := 3200mAh
RISING_DISPLAY := 1080x1920

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="capricorn" \
    PRIVATE_BUILD_DESC="capricorn-user 7.0 NRD90M V9.5.4.0.NAGMIFD release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/capricorn/capricorn:7.0/NRD90M/V9.5.4.0.NAGMIFD:user/release-keys"
