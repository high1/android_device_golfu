# Boot animation
TARGET_SCREEN_HEIGHT := 320
TARGET_SCREEN_WIDTH := 480
# Include GSM stuff
$(call inherit-product, vendor/omni/config/gsm.mk)
DEVICE_PACKAGE_OVERLAYS += device/htc/golfu/overlay
# Inherit some common stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)
# Inherit device configuration
$(call inherit-product, device/htc/golfu/full_golfu.mk)
BUILDTYPE_NIGHTLY := true
# Product name
PRODUCT_NAME := omni_golfu
PRODUCT_BRAND := htc
PRODUCT_DEVICE := golfu
PRODUCT_MANUFACTURER := HTC
PRODUCT_RELEASE_NAME := Desire C
PRODUCT_MODEL := Desire C A320e
PRODUCT_BUILD_PROP_OVERRIDES += \
PRODUCT_NAME=golfu \
BUILD_FINGERPRINT=htc_europe/htc_golfu/golfu:4.0.3/GRJ90/207463.1:user/release-keys
PRIVATE_BUILD_DESC="1.28.401.1 CL207463 release-keys"
