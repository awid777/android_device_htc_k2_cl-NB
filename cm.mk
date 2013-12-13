# Release name
PRODUCT_RELEASE_NAME := k2_cl

# Inherit device configuration
$(call inherit-product, device/htc/k2_cl/device_k2_cl.mk)
# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)


## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := k2_cl
PRODUCT_NAME := cm_k2_cl
PRODUCT_BRAND := htc
PRODUCT_MODEL := k2_cl
PRODUCT_MANUFACTURER := htc
# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_k2_ul BUILD_FINGERPRINT=euro/htc/k2ul:4.1.2/JB_MR2/573038:user/user-debug PRIVATE_BUILD_DESC="k2_ul-user 4.1.2 JB_MR2 573038 user-debug"

