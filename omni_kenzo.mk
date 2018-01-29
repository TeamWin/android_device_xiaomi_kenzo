DEVICE_TREE := device/xiaomi/kenzo

VENDOR_TREE := vendor/xiaomi/kenzo

# Release name
PRODUCT_RELEASE_NAME := kenzo

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# call the proprietary setup
$(call inherit-product, $(VENDOR_TREE)/kenzo-vendor.mk)

# call specific init
$(call inherit-product, $(DEVICE_TREE)/init/Android.mk)

PRODUCT_PACKAGES += \
	charger_res_images \
	charger

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := kenzo
PRODUCT_NAME := omni_kenzo
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 3
PRODUCT_MANUFACTURER := Xiaomi
