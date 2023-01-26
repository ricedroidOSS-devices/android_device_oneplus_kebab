#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from kebab device
$(call inherit-product, device/oneplus/kebab/device.mk)

# Inherit some common Ricedroid stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_kebab
PRODUCT_DEVICE := kebab
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := KB2005

PRODUCT_SYSTEM_NAME := OnePlus8T
PRODUCT_SYSTEM_DEVICE := OnePlus8T

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus8T-user 13 RKQ1.211119.001 R.c9b6f1_9-1db5a release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/OnePlus8T/OnePlus8T:13/RKQ1.211119.001/R.c9b6f1_9-1db5a:user/release-keys

# riceDroid Flags

# Spoof build description/fingerprint as pixel device
TARGET_USE_PIXEL_FINGERPRINT := true

# Enable Google Recorder Functionality
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Opt out of google dialer support, compiler will build aosp dialer,
# package type will change from PIXEL -> GMS
TARGET_OPTOUT_GOOGLE_TELEPHONY := false

# Flag for GrapheneOS Camera
TARGET_BUILD_GRAPHENEOS_CAMERA := false

# Enable Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Enable Quick Tap Funtionality
TARGET_SUPPORTS_QUICK_TAP := true

# UDFPS ICONS/ANIMATIONS
TARGET_HAS_UDFPS := true

# Enable Blur
TARGET_ENABLE_BLUR := true

# Set the correct chipset target to be shown in info
RICE_CHIPSET := SD865

# Maintainer Stuff
RICE_MAINTAINER := Lord Itachi
RICE_OFFICIAL := true
