#
#
# Copyright (C) 2018-2019 The LineageOS Project
# Copyright (C) 2020 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

-include device/tinno/msm8937-common/BoardConfigCommon.mk

DEVICE_PATH := device/yu/garlic

# Assert
TARGET_OTA_ASSERT_DEVICE := garlic

# A/B
AB_OTA_UPDATER := true

# A/B
AB_OTA_PARTITIONS += \
    boot \
    system \
    recovery \
    vendor \
    vendor_boot

# Kernel
TARGET_KERNEL_CONFIG := garlic_defconfig

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3930062848
BOARD_USERDATAIMAGE_PARTITION_SIZE := 24892644352

BOARD_ROOT_EXTRA_SYMLINKS += /mnt/vendor/persist:/persist
BOARD_ROOT_EXTRA_FOLDERS := firmware dsp

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Recovery
ifneq ($(WITH_TWRP),true)
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/fstab.qcom
endif

# Inherit from the proprietary version
-include vendor/yu/garlic/BoardConfigVendor.mk
