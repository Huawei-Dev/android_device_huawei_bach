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
    $(LOCAL_PATH)/prebuilts/drc/drc_cfg_5.1.txt:$(TARGET_OUT_VENDOR_ETC)/drc/drc_cfg_5.1.txt \
    $(LOCAL_PATH)/prebuilts/drc/drc_cfg_AZ.txt:$(TARGET_OUT_VENDOR_ETC)/drc/drc_cfg_AZ.txt

PRODUCT_PACKAGES += \
    $(LOCAL_PATH)/prebuilts/surround_sound_3mic/surround_sound_rec_5.1.cfg:$(TARGET_OUT_VENDOR_ETC)/surround_sound_3mic/surround_sound_rec_5.1.cfg \
    $(LOCAL_PATH)/prebuilts/surround_sound_3mic/surround_sound_rec_AZ.cfg:$(TARGET_OUT_VENDOR_ETC)/surround_sound_3mic/surround_sound_rec_AZ.cfg

PRODUCT_PACKAGES += \
    $(LOCAL_PATH)/prebuilts/aanc_tuning_mixer.txt:$(TARGET_OUT_VENDOR_ETC)/aanc_tuning_mixer.txt \
    $(LOCAL_PATH)/prebuilts/audio_effects.conf:$(TARGET_OUT_VENDOR_ETC)/audio_effects.conf \
    $(LOCAL_PATH)/prebuilts/audio_output_policy.conf:$(TARGET_OUT_VENDOR_ETC)/audio_output_policy.conf \
    $(LOCAL_PATH)/prebuilts/audio_platform_info.xml:$(TARGET_OUT_VENDOR_ETC)/audio_platform_info.xml \
    $(LOCAL_PATH)/prebuilts/audio_platform_info_extcodec.xml:$(TARGET_OUT_VENDOR_ETC)/audio_platform_info_extcodec.xml \
    $(LOCAL_PATH)/prebuilts/audio_policy.conf:$(TARGET_OUT_VENDOR_ETC)/audio_policy.conf \
    $(LOCAL_PATH)/prebuilts/mixer_paths.xml:$(TARGET_OUT_VENDOR_ETC)/mixer_paths.xml \
    $(LOCAL_PATH)/prebuilts/mixer_paths_mtp.xml:$(TARGET_OUT_VENDOR_ETC)/mixer_paths_mtp.xml \
    $(LOCAL_PATH)/prebuilts/mixer_paths_qrd_skuh.xml:$(TARGET_OUT_VENDOR_ETC)/mixer_paths_qrd_skuh.xml \
    $(LOCAL_PATH)/prebuilts/mixer_paths_qrd_skuhf.xml:$(TARGET_OUT_VENDOR_ETC)/mixer_paths_qrd_skuhf.xml \
    $(LOCAL_PATH)/prebuilts/mixer_paths_qrd_skui.xml:$(TARGET_OUT_VENDOR_ETC)/mixer_paths_qrd_skui.xml \
    $(LOCAL_PATH)/prebuilts/mixer_paths_qrd_skum.xml:$(TARGET_OUT_VENDOR_ETC)/mixer_paths_qrd_skum.xml \
    $(LOCAL_PATH)/prebuilts/mixer_paths_qrd_skun.xml:$(TARGET_OUT_VENDOR_ETC)/mixer_paths_qrd_skun.xml \
    $(LOCAL_PATH)/prebuilts/mixer_paths_skuk.xml:$(TARGET_OUT_VENDOR_ETC)/mixer_paths_skuk.xml \
    $(LOCAL_PATH)/prebuilts/mixer_paths_wcd9306.xml:$(TARGET_OUT_VENDOR_ETC)/mixer_paths_wcd9306.xml \
    $(LOCAL_PATH)/prebuilts/mixer_paths_wcd9326.xml:$(TARGET_OUT_VENDOR_ETC)/mixer_paths_wcd9326.xml \
    $(LOCAL_PATH)/prebuilts/mixer_paths_wcd9330.xml:$(TARGET_OUT_VENDOR_ETC)/mixer_paths_wcd9330.xml \
    $(LOCAL_PATH)/prebuilts/mixer_paths_wcd9335.xml:$(TARGET_OUT_VENDOR_ETC)/mixer_paths_wcd9335.xml \
    $(LOCAL_PATH)/prebuilts/sound_trigger_mixer_paths.xml:$(TARGET_OUT_VENDOR_ETC)/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/prebuilts/sound_trigger_mixer_paths_wcd9306.xml:$(TARGET_OUT_VENDOR_ETC)/sound_trigger_mixer_paths_wcd9306.xml \
    $(LOCAL_PATH)/prebuilts/sound_trigger_mixer_paths_wcd9330.xml:$(TARGET_OUT_VENDOR_ETC)/sound_trigger_mixer_paths_wcd9330.xml \
    $(LOCAL_PATH)/prebuilts/sound_trigger_mixer_paths_wcd9335.xml:$(TARGET_OUT_VENDOR_ETC)/sound_trigger_mixer_paths_wcd9335.xml \
    $(LOCAL_PATH)/prebuilts/sound_trigger_platform_info.xml:$(TARGET_OUT_VENDOR_ETC)/sound_trigger_platform_info.xml

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
    $(LOCAL_PATH)/prebuilts/fingerprint.idc:$(TARGET_OUT_VENDOR)/usr/idc/fingerprint.idc

# GPS
PRODUCT_PACKAGES += \
    gps.msm8937 \
    libcurl \
    libgnsspps

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/etc/flp.conf:$(TARGET_OUT_VENDOR_ETC)/flp.conf \
    $(LOCAL_PATH)/gps/etc/gps.conf:$(TARGET_OUT_VENDOR_ETC)/gps.conf \
    $(LOCAL_PATH)/gps/etc/izat.conf:$(TARGET_OUT_VENDOR_ETC)/izat.conf \
    $(LOCAL_PATH)/gps/etc/lowi.conf:$(TARGET_OUT_VENDOR_ETC)/lowi.conf \
    $(LOCAL_PATH)/gps/etc/sap.conf:$(TARGET_OUT_VENDOR_ETC)/sap.conf \
    $(LOCAL_PATH)/gps/etc/xtwifi.conf:$(TARGET_OUT_VENDOR_ETC)/xtwifi.conf

# IRQ
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/msm_irqbalance.conf:$(TARGET_OUT_VENDOR_ETC)/msm_irqbalance.conf

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/sec_config:$(TARGET_OUT_VENDOR_ETC)/sec_config

# Key
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/fingerprint.kl:$(TARGET_OUT_VENDOR)/usr/keylayout/fingerprint.kl \
    $(LOCAL_PATH)/prebuilts/ft5x06_ts.kl:$(TARGET_OUT_VENDOR)/usr/keylayout/ft5x06_ts.kl \
    $(LOCAL_PATH)/prebuilts/gpio-keys.kl:$(TARGET_OUT_VENDOR)/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/prebuilts/synaptics_dsx.kl:$(TARGET_OUT_VENDOR)/usr/keylayout/synaptics_dsx.kl \
    $(LOCAL_PATH)/prebuilts/synaptics_rmi4_i2c.kl:$(TARGET_OUT_VENDOR)/usr/keylayout/synaptics_rmi4_i2c.kl \
    $(LOCAL_PATH)/prebuilts/usbaudio.kl:$(TARGET_OUT_VENDOR)/usr/keylayout/usbaudio.kl

# Media 
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/media_codecs.xml:$(TARGET_OUT_VENDOR_ETC)/media_codecs.xml \
    $(LOCAL_PATH)/prebuilts/media_codecs_8956.xml:$(TARGET_OUT_VENDOR_ETC)/media_codecs_8956.xml \
    $(LOCAL_PATH)/prebuilts/media_codecs_performance.xml:$(TARGET_OUT_VENDOR_ETC)/media_codecs_performance.xml \
    $(LOCAL_PATH)/prebuilts/media_profiles.xml:$(TARGET_OUT_VENDOR_ETC)/media_profiles.xml \
    $(LOCAL_PATH)/prebuilts/media_profiles_8956.xml:$(TARGET_OUT_VENDOR_ETC)/media_profiles_8956.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_OUT_VENDOR_ETC)/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_OUT_VENDOR_ETC)/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_OUT_VENDOR_ETC)/media_codecs_google_video.xml

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
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:$(TARGET_OUT_VENDOR_ETC)/permissions/com.dsi.ant.antradio_library.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_OUT_VENDOR_ETC)/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.external.xml:$(TARGET_OUT_VENDOR_ETC)/permissions/android.hardware.camera.external.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_OUT_VENDOR_ETC)/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_OUT_VENDOR_ETC)/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:$(TARGET_OUT_VENDOR_ETC)/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_OUT_VENDOR_ETC)/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_OUT_VENDOR_ETC)/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_OUT_VENDOR_ETC)/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:$(TARGET_OUT_VENDOR_ETC)/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_OUT_VENDOR_ETC)/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_OUT_VENDOR_ETC)/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_OUT_VENDOR_ETC)/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_OUT_VENDOR_ETC)/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_OUT_VENDOR_ETC)/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_OUT_VENDOR_ETC)/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_OUT_VENDOR_ETC)/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_OUT_VENDOR_ETC)/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_OUT_VENDOR_ETC)/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_OUT_VENDOR_ETC)/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_OUT_VENDOR_ETC)/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:$(TARGET_OUT_VENDOR_ETC)/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_OUT_VENDOR_ETC)/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.software.app_widgets.xml:$(TARGET_OUT_VENDOR_ETC)/permissions/android.software.app_widgets.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_OUT_VENDOR_ETC)/permissions/handheld_core_hardware.xml

# Power
PRODUCT_PACKAGES += \
    power.msm8937

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.carrier.rc \
    init.class_main.sh \
    init.huawei.audio.rc \
    init.huawei.camera.rc \
    init.huawei.charger.rc \
    init.huawei.cpu_set.sh \
    init.huawei.device.rc \
    init.huawei.os.rc \
    init.huawei.power.rc \
    init.huawei.rc \
    init.huawei.target.rc \
    init.huawei.wcnss.rc \
    init.hw.debug.rc \
    init.mdm.sh \
    init.msm.usb.configfs.rc \
    init.qcom.class_core.sh \
    init.qcom.early_boot.sh \
    init.qcom.factory.rc \
    init.qcom.rc \
    init.qcom.sensors.sh \
    init.qcom.sh \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    init.target.rc \
    ueventd.qcom.rc

# RIL
PRODUCT_PACKAGES += \
    librmnetctl \
    libcnefeatureconfig \
    libxml2

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/data/dsi_config.xml:$(TARGET_OUT_VENDOR_ETC)/data/dsi_config.xml \
    $(LOCAL_PATH)/prebuilts/data/netmgr_config.xml:$(TARGET_OUT_VENDOR_ETC)/data/netmgr_config.xml \
    $(LOCAL_PATH)/prebuilts/data/qmi_config.xml:$(TARGET_OUT_VENDOR_ETC)/data/qmi_config.xml

# Screen density
PRODUCT_AAPT_CONFIG := normal large xlarge hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_CHARACTERISTICS := tablet
PRODUCT_TAGS += dalvik.gc.type-precise

# Scripts
PRODUCT_PACKAGES += \
    init.qcom.bt.sh \
    init.qcom.post_boot.sh

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/sensors/hals.conf:$(TARGET_OUT_VENDOR_ETC)/sensors/hals.conf \
    $(LOCAL_PATH)/prebuilts/sensors/sensor_def_qcomdev.conf:$(TARGET_OUT_VENDOR_ETC)/sensors/sensor_def_qcomdev.conf

PRODUCT_PACKAGES += \
    calmodule.cfg \
    sensors.msm8937

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/thermal-engine.conf:$(TARGET_OUT_VENDOR_ETC)/thermal-engine.conf \
    $(LOCAL_PATH)/prebuilts/thermal_sensor_config.xml:$(TARGET_OUT_VENDOR_ETC)/thermal_sensor_config.xml

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
    $(LOCAL_PATH)/wifi/hostapd.accept:$(TARGET_OUT_VENDOR_ETC)/hostapd/hostapd.accept \
    $(LOCAL_PATH)/wifi/hostapd_default.conf:$(TARGET_OUT_VENDOR_ETC)/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/wifi/hostapd.deny:$(TARGET_OUT_VENDOR_ETC)/hostapd/hostapd.deny

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/fstman.ini:$(TARGET_OUT_VENDOR_ETC)/wifi/fstman.ini \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:$(TARGET_OUT_VENDOR_ETC)/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/wifi/WCNSS_wlan_nv.bin:$(TARGET_OUT_VENDOR_ETC)/wifi/WCNSS_wlan_nv.bin \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:$(TARGET_OUT_VENDOR_ETC)/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:$(TARGET_OUT_VENDOR_ETC)/wifi/wpa_supplicant_overlay.conf
