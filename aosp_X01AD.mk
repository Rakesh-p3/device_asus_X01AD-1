#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from X01AD device
$(call inherit-product, device/asus/X01AD/device.mk)

# Inherit some common Pixel Experience stuff.
$(call inherit-product, vendor/aosp/config/common.mk)

# Set shipping API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Device identifiers.
PRODUCT_DEVICE := X01AD
PRODUCT_NAME := aosp_X01AD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Asus Zenfone Max M2
PRODUCT_MANUFACTURER := asus
TARGET_VENDOR := asus
BOARD_VENDOR := asus
	
PRODUCT_GMS_CLIENTID_BASE := android-asus
# Pixel Experience Properties
TARGET_BOOT_ANIMATION_RES := 720
TARGET_INCLUDE_PIXEL_CHARGER := true
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
