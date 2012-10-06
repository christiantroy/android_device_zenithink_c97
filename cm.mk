# Inherit device configuration for C97.
$(call inherit-product, device/zenithink/c97/full_c97.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
$(call inherit-product, vendor/cm/config/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cm_c97
PRODUCT_BRAND := Google
PRODUCT_DEVICE := c97
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasi TARGET_DEVICE=grouper BUILD_FINGERPRINT="google/nakasi/grouper:4.1.1/JRO03D/402395:user/release-keys" PRIVATE_BUILD_DESC="nakasi-user 4.1.1 JRO03D 402395 release-keys"
