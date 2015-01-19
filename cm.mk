# Boot animation
TARGET_SCREEN_HEIGHT := 320
TARGET_SCREEN_WIDTH  := 480

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/golfu/golfu.mk)

# Product name
PRODUCT_DEVICE := golfu
PRODUCT_NAME := cm_golfu
PRODUCT_BRAND := HTC
PRODUCT_MODEL := HTC Desire C
PRODUCT_MANUFACTURER := HTC
PRODUCT_RELEASE_NAME := Desire C
PRODUCT_GMS_CLIENTID_BASE := android-htc-rev
PRODUCT_CHARACTERISTICS := phone