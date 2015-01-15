
# The GPS configuration appropriate for this device.
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# proprietary side of the device
$(call inherit-product-if-exists, vendor/htc/golfu/golfu-vendor.mk)

# GPS
#PRODUCT_PACKAGES += \
    gps.golfu
     
# NFC
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# Bluetooth
PRODUCT_PACKAGES += \
    btmac 

#Wifi
PRODUCT_PACKAGES += \
    libnetcmdiface

# FM Radio
#PRODUCT_PACKAGES += \
#    FM2 \
#    libqcomfm_jni \
#    qcom.fmradio

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    dexpreopt \
    librpc
    
# Ramdisk
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/htc/golfu/ramdisk,root)

# Recovery
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/htc/golfu/prebuilt/recovery,recovery/root)
    
# Prebuilt
#PRODUCT_COPY_FILES += \
#    $(call find-copy-subdir-files,*,device/htc/golfu/prebuilt/system,system)

# Hardware properties 
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml
    
#Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml
    
# Media
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/htc/golfu/proprietary/etc/media_codecs.xml:system/etc/media_codecs.xml

# Wifi
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/htc/golfu/proprietary/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# Audio
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/htc/golfu/proprietary/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/htc/golfu/proprietary/etc/AudioBTID.csv:system/etc/AudioBTID.csv \
    device/htc/golfu/proprietary/etc/AudioPara4.csv:system/etc/AudioPara4.csv \
    device/htc/golfu/proprietary/etc/AudioPara4_WB.csv:system/etc/AudioPara4_WB.csv \
    device/htc/golfu/proprietary/etc/AudioPreProcess.csv:system/etc/AudioPreProcess.csv \
    device/htc/golfu/proprietary/etc/AudioFilter_HP.csv:system/etc/AudioFilter_HP.csv \
    device/htc/golfu/proprietary/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt

# NFC
PRODUCT_COPY_FILES += \
    device/htc/golfu/prebuilt/nfc/nfcee_access.xml:system/etc/nfcee_access.xml

# Audio DSP Profiles
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/etc/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg \
    device/htc/golfu/proprietary/etc/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    device/htc/golfu/proprietary/etc/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/golfu/proprietary/etc/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/golfu/proprietary/etc/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg \
    device/htc/golfu/proprietary/etc/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/golfu/proprietary/etc/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg

# Keylayouts, ICU & IDCs
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/usr/keylayout/golfu-keypad.kl:system/usr/keylayout/golfu-keypad.kl \
    device/htc/golfu/proprietary/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/golfu/proprietary/usr/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl \
    device/htc/golfu/proprietary/usr/keylayout/himax-touchscreen.kl:system/usr/keylayout/himax-touchscreen.kl \
    device/htc/golfu/proprietary/usr/icu/icudt46l.dat:system/usr/icu/icudt46l.dat \
    device/htc/golfu/proprietary/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    device/htc/golfu/proprietary/usr/idc/himax-touchscreen.idc:system/usr/idc/himax-touchscreen.idc
    #device/htc/golfu/proprietary/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl 

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0 \
    ro.secure=0