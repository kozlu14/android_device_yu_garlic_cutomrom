#
# Copyright (C) 2021 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
# Get non-open-source specific aspects

$(call inherit-product, vendor/yu/garlic/garlic-vendor.mk)

# Local overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Inherit from msm8937-common
$(call inherit-product, device/tinno/msm8937-common/msm8937.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/mixer_paths_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_mtp.xml \
    $(LOCAL_PATH)/configs/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/msm8937_camera_p7201.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/msm8937_camera_p7201.xml \
    $(LOCAL_PATH)/configs/camera/imx258_guangbao_p7201_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/imx258_guangbao_p7201_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/imx258_sunny_p7201_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/imx258_sunny_p7201_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/ov8856_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/ov8856_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/p7201_s5k4h8_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/p7201_s5k4h8_chromatix.xml

# FSTAB
PRODUCT_PACKAGES += \
    fstab.qcom

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/ft5x06_ts.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/ft5x06_ts.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/qpnp_pon.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/qpnp_pon.kl

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml \
    $(LOCAL_PATH)/configs/media_profiles_vendor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_vendor.xml

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf \
    $(LOCAL_PATH)/configs/sensors/sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensor_def_qcomdev.conf
