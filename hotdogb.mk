#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hotdogb device
$(call inherit-product, device/oneplus/hotdogb/device.mk)
$(call inherit-product-if-exists, vendor/oneplus/hotdogb/hotdogb-vendor.mk)

#
# All components inherited here go to product image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_product.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := hotdogb
PRODUCT_DEVICE := hotdogb
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OnePlus 7T
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_AAPT_CONFIG := normal
PRODUCT_CHARACTERISTICS := nosdcard

# Build info
BUILD_FINGERPRINT := "OnePlus/OnePlus7T/OnePlus7T:11/RKQ1.201022.002/2101121552:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=OnePlus7T \
    PRODUCT_NAME=OnePlus7T \
    PRIVATE_BUILD_DESC="OnePlus7TPro_EEA-user 11 RKQ1.201022.002 2101121552 release-keys"
    
PRODUCT_GMS_CLIENTID_BASE := android-oneplus

