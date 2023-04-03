#
# Copyright (C) 2018-2021 Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from tenshi device
$(call inherit-product, device/yu/garlic/device.mk)

# Inherit from common device
$(call inherit-product, device/tinno/msm8937-common/msm8937.mk)

# Inherit some common CorvusOS stuff
TARGET_BOOT_ANIMATION_RES := 1080
$(call inherit-product, vendor/corvus/config/common_full_phone.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := yu
PRODUCT_DEVICE := garlic
PRODUCT_NAME := corvus_garlic
PRODUCT_BRAND := yu
PRODUCT_MODEL := YU Yureka Black
PRODUCT_MANUFACTURER := yu

PRODUCT_GMS_CLIENTID_BASE := android-yu

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="p7201-user 7.1.1 NMF26F 1503040709 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := YU/YU5040/YU5040:7.1.1/NMF26F/1503040709:user/release-keys
