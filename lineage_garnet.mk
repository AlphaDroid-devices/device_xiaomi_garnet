#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common DerpFest stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Inherit from garnet device
$(call inherit-product, device/xiaomi/garnet/device.mk)

# Maintainer
ALPHA_MAINTAINER := UnmoveD
ALPHA_BUILD_TYPE := Official

# Device config
TARGET_ENABLE_BLUR := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BUILD_PACKAGE := 3

# TARGET_BUILD_PACKAGE options:
# 1 - vanilla (default)
# 2 - microg
# 3 - gapps
TARGET_BUILD_PACKAGE := 3

# TARGET_LAUNCHER options:
# 1 - stock (default)
# 2 - lawnchair
# 3 - pixel (valid only on gapps builds)
TARGET_LAUNCHER := 1

# GAPPS (valid only for GAPPS builds)
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_MATLOG := true

PRODUCT_NAME := lineage_garnet
PRODUCT_DEVICE := garnet
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 2312DRA50G

PRODUCT_SYSTEM_NAME := garnet_global
PRODUCT_SYSTEM_DEVICE := garnet

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="garnet_global-user 14 UKQ1.231003.002 V816.0.9.0.UNRMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Redmi/garnet_global/garnet:14/UKQ1.231003.002/V816.0.9.0.UNRMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
