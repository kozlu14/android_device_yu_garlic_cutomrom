#
# Copyright (C) 2018-2019 The LineageOS Project
# Copyright (C) 2020 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),garlic)
include $(call all-makefiles-under,$(LOCAL_PATH))

ELANFP_IMAGES := \
    elanfp.b00 elanfp.b01 elanfp.b02 elanfp.b03 elanfp.b04 elanfp.b05 \
    elanfp.b06 elanfp.mdt

ELANFP_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR_ETC)/firmware/,$(notdir $(ELANFP_IMAGES)))
$(ELANFP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "ELANFP firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /vendor/firmware_mnt/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(ELANFP_SYMLINKS)

GOODIXFP_IMAGES := \
    goodixfp.b00 goodixfp.b01 goodixfp.b02 goodixfp.b03 goodixfp.b04 goodixfp.b05 \
    goodixfp.b06 goodixfp.mdt

GOODIXFP_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR_ETC)/firmware/,$(notdir $(GOODIXFP_IMAGES)))
$(GOODIXFP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "GOODIXFP firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /vendor/firmware_mnt/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(GOODIXFP_SYMLINKS)
endif
