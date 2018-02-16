# Release name
PRODUCT_RELEASE_NAME := kenzo

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# call the proprietary setup
$(call inherit-product, vendor/xiaomi/kenzo/kenzo-vendor.mk)
$(call inherit-product, vendor/xiaomi/msm8956-common/msm8956-common-vendor.mk)

PRODUCT_PACKAGES += \
	charger_res_images \
	charger

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := kenzo
PRODUCT_NAME := omni_kenzo
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 3
PRODUCT_MANUFACTURER := Xiaomi
