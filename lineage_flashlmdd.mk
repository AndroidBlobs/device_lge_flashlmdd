# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from flashlmdd device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := lge
PRODUCT_DEVICE := flashlmdd
PRODUCT_MANUFACTURER := lge
PRODUCT_NAME := lineage_flashlmdd
PRODUCT_MODEL := LM-V500

PRODUCT_GMS_CLIENTID_BASE := android-lge
TARGET_VENDOR := lge
TARGET_VENDOR_PRODUCT_NAME := flashlmdd
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="flashlmdd_lao_com-user 9 PKQ1.190223.001 192841545b09f release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := lge/flashlmdd_lao_com/flashlmdd:9/PKQ1.190223.001/192841545b09f:user/release-keys
