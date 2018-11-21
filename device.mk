#
# Copyright (C) 2018 The LineageOS Project
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

$(call inherit-product, vendor/huawei/bach/bach-vendor.mk)

# ANT
PRODUCT_PACKAGES += \
    AntHalService \
    com.dsi.ant.antradio_library \
    libantradio

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio.primary.msm8937 \
    libaudio-resampler \ \
    tinymix \
    libqcomvisualizer \
    libqcompostprocbundle \
    libqcomvoiceprocessing

PRODUCT_PACKAGES += \
    $(LOCAL_PATH)/prebuilts/drc/drc_cfg_5.1.txt:vendor/etc/drc/drc_cfg_5.1.txt \
    $(LOCAL_PATH)/prebuilts/drc/drc_cfg_AZ.txt:vendor/etc/drc/drc_cfg_AZ.txt

PRODUCT_PACKAGES += \
    $(LOCAL_PATH)/prebuilts/surround_sound_3mic/surround_sound_rec_5.1.cfg:vendor/etc/surround_sound_3mic/surround_sound_rec_5.1.cfg \
    $(LOCAL_PATH)/prebuilts/surround_sound_3mic/surround_sound_rec_AZ.cfg:vendor/etc/surround_sound_3mic/surround_sound_rec_AZ.cfg

PRODUCT_PACKAGES += \
    $(LOCAL_PATH)/prebuilts/aanc_tuning_mixer.txt:vendor/etc/aanc_tuning_mixer.txt \
    $(LOCAL_PATH)/prebuilts/audio_effects.conf:vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/prebuilts/audio_output_policy.conf:vendor/etc/audio_output_policy.conf \
    $(LOCAL_PATH)/prebuilts/audio_platform_info.xml:vendor/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/prebuilts/audio_platform_info_extcodec.xml:vendor/etc/audio_platform_info_extcodec.xml \
    $(LOCAL_PATH)/prebuilts/audio_policy.conf:vendor/etc/audio_policy.conf \
    $(LOCAL_PATH)/prebuilts/mixer_paths.xml:vendor/etc/mixer_paths.xml \
    $(LOCAL_PATH)/prebuilts/mixer_paths_mtp.xml:vendor/etc/mixer_paths_mtp.xml \
    $(LOCAL_PATH)/prebuilts/mixer_paths_qrd_skuh.xml:vendor/etc/mixer_paths_qrd_skuh.xml \
    $(LOCAL_PATH)/prebuilts/mixer_paths_qrd_skuhf.xml:vendor/etc/mixer_paths_qrd_skuhf.xml \
    $(LOCAL_PATH)/prebuilts/mixer_paths_qrd_skui.xml:vendor/etc/mixer_paths_qrd_skui.xml \
    $(LOCAL_PATH)/prebuilts/mixer_paths_qrd_skum.xml:vendor/etc/mixer_paths_qrd_skum.xml \
    $(LOCAL_PATH)/prebuilts/mixer_paths_qrd_skun.xml:vendor/etc/mixer_paths_qrd_skun.xml \
    $(LOCAL_PATH)/prebuilts/mixer_paths_skuk.xml:vendor/etc/mixer_paths_skuk.xml \
    $(LOCAL_PATH)/prebuilts/mixer_paths_wcd9306.xml:vendor/etc/mixer_paths_wcd9306.xml \
    $(LOCAL_PATH)/prebuilts/mixer_paths_wcd9326.xml:vendor/etc/mixer_paths_wcd9326.xml \
    $(LOCAL_PATH)/prebuilts/mixer_paths_wcd9330.xml:vendor/etc/mixer_paths_wcd9330.xml \
    $(LOCAL_PATH)/prebuilts/mixer_paths_wcd9335.xml:vendor/etc/mixer_paths_wcd9335.xml \
    $(LOCAL_PATH)/prebuilts/sound_trigger_mixer_paths.xml:vendor/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/prebuilts/sound_trigger_mixer_paths_wcd9306.xml:vendor/etc/sound_trigger_mixer_paths_wcd9306.xml \
    $(LOCAL_PATH)/prebuilts/sound_trigger_mixer_paths_wcd9330.xml:vendor/etc/sound_trigger_mixer_paths_wcd9330.xml \
    $(LOCAL_PATH)/prebuilts/sound_trigger_mixer_paths_wcd9335.xml:vendor/etc/sound_trigger_mixer_paths_wcd9335.xml \
    $(LOCAL_PATH)/prebuilts/sound_trigger_platform_info.xml:vendor/etc/sound_trigger_platform_info.xml

# Display
PRODUCT_PACKAGES += \
    copybit.msm8937 \
    gralloc.msm8937 \
    hwcomposer.msm8937 \
    memtrack.msm8937 \
    liboverlay \
    libtinyxml

# Ebtables
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# FPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/fingerprint.idc:vendor/usr/idc/fingerprint.idc

# GPS
PRODUCT_PACKAGES += \
    gps.msm8937 \
    libcurl \
    libgnsspps

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/etc/flp.conf:vendor/etc/flp.conf \
    $(LOCAL_PATH)/gps/etc/gps.conf:vendor/etc/gps.conf \
    $(LOCAL_PATH)/gps/etc/izat.conf:vendor/etc/izat.conf \
    $(LOCAL_PATH)/gps/etc/lowi.conf:vendor/etc/lowi.conf \
    $(LOCAL_PATH)/gps/etc/sap.conf:vendor/etc/sap.conf \
    $(LOCAL_PATH)/gps/etc/xtwifi.conf:vendor/etc/xtwifi.conf

# IRQ
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/msm_irqbalance.conf:vendor/etc/msm_irqbalance.conf

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/sec_config:vendor/etc/sec_config

# Key
PRODUCT_COPY_FILES += \
    fingerprint.kl \
    ft5x06_ts.kl \
    gpio-keys.kl \
    synaptics_dsx.kl \
    synaptics_rmi4_i2c.kl \
    usbaudio.kl

# Media 
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/media_codecs.xml:vendor/etc/media_codecs.xml \
    $(LOCAL_PATH)/prebuilts/media_codecs_8956.xml:vendor/etc/media_codecs_8956.xml \
    $(LOCAL_PATH)/prebuilts/media_codecs_performance.xml:vendorm/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/prebuilts/media_profiles.xml:vendor/etc/media_profiles.xml \
    $(LOCAL_PATH)/prebuilts/media_profiles_8956.xml:vendor/etc/media_profiles_8956.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:vendor/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:vendor/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:vendor/etc/media_codecs_google_video.xml

# OMX
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libc2dcolorconvert \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxSwVencHevc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.external.xml:system/etc/permissions/android.hardware.camera.external.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Power
PRODUCT_PACKAGES += \
    power.msm8937

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom

# RIL
PRODUCT_PACKAGES += \
    librmnetctl \
    libcnefeatureconfig \
    libxml2

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/data/dsi_config.xml:vendor/etc/data/dsi_config.xml \
    $(LOCAL_PATH)/prebuilts/data/netmgr_config.xml:vendor/etc/data/netmgr_config.xml \
    $(LOCAL_PATH)/prebuilts/data/qmi_config.xml:vendor/etc/data/qmi_config.xml

# Screen density
PRODUCT_AAPT_CONFIG := normal large xlarge hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_CHARACTERISTICS := tablet
PRODUCT_TAGS += dalvik.gc.type-precise

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/sensors/hals.conf:vendor/etc/sensors/hals.conf \
    $(LOCAL_PATH)/prebuilts/sensors/sensor_def_qcomdev.conf:vendor/etc/sensors/sensor_def_qcomdev.conf

PRODUCT_PACKAGES += \
    calmodule.cfg \
    sensors.msm8937

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/thermal-engine.conf:vendor/etc/thermal-engine.conf \
    $(LOCAL_PATH)/prebuilts/thermal_sensor_config.xml:vendor/etc/thermal_sensor_config.xml

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Wifi
PRODUCT_PACKAGES += \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    libwpa_client \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf \
    wcnss_service

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/hostapd.accept:vendor/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/wifi/hostapd_default.conf:vendor/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/wifi/hostapd.deny:vendor/etc/hostapd/hostapd.deny

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/fstman.ini:vendor/etc/wifi/fstman.ini \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:vendor/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/wifi/WCNSS_wlan_nv.bin:vendor/etc/wifi/WCNSS_wlan_nv.bin \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf
