# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from coral device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := google
PRODUCT_DEVICE := coral
PRODUCT_MANUFACTURER := google
PRODUCT_NAME := lineage_coral
PRODUCT_MODEL := Pixel 4 XL

PRODUCT_GMS_CLIENTID_BASE := android-google
TARGET_VENDOR := google
TARGET_VENDOR_PRODUCT_NAME := coral
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="coral-user 12 S3B1.220218.004 8242181 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/coral/coral:12/S3B1.220218.004/8242181:user/release-keys
