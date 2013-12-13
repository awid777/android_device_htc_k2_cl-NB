# Copyright 2013 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).


#Built from source kernel
 # TARGET_KERNEL_CONFIG	:= k2_cl_defconfig
 # TARGET_KERNEL_SOURCE	:= kernel/k2_cl
 # TARGET_ARH	:= arm

# inherit from common msm8960
-include device/htc/msm8960-common/BoardConfigCommon.mk


# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := k2_cl

# Platform
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno305

# HTCLOG
COMMON_GLOBAL_CFLAGS += -DHTCLOG

# Flags
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# Audio
BOARD_USES_ALSA_SOUND := true
BOARD_HAVE_HTC_AUDIO := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/k2_cl/bluetooth

# FM radio
BOARD_HAVE_QCOM_FM := true
COMMON_GLOBAL_CFLAGS += -DQCOM_FM_ENABLED

# QCOM GPS
BOARD_USES_QCOM_GPS := true

# Graphics
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK
USE_OPENGL_RENDERER := true
TARGET_NO_HW_VSYNC := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
BOARD_EGL_CFG := device/htc/k2_cl/configs/egl.cfg

# HWComposer
BOARD_USES_HWCOMPOSER := true

# Wifi
WIFI_BAND := 802_11_ABGN
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                := bcmdhd
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/firmware/fw_bcm4334.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/firmware/fw_bcm4334_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/system/etc/firmware/fw_bcm4334_p2p.bin"
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"


# Webkit
# ENABLE_WEBGL := true
# TARGET_FORCE_CPU_UPLOAD := true

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 
BOARD_KERNEL_BASE := 0x80400000
BOARD_RAMDISK_BASE:= 0x81808000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x0148000
TARGET_KERNEL_CONFIG := k2_cl_defconfig
TARGET_KERNEL_SOURCE	:= kernel/htc/k2
TARGET_ARH	:= arm
# BOARD_FORCE_RAMDISK_ADDRESS := 0x81808000


# Use libril in the device tree
BOARD_PROVIDES_LIBRIL := true

# cat /proc/emmc
#dev:        size     erasesize name
#mmcblk0p22: 000ffa00 00000200 "misc"
#mmcblk0p21: 00fffe00 00000200 "recovery"
#mmcblk0p20: 01000000 00000200 "boot"
#mmcblk0p35: 54fffc00 00000200 "system"
#mmcblk0p29: 00140200 00000200 "local"
#mmcblk0p36: 0dfffe00 00000200 "cache"
#mmcblk0p37: 49fffe00 00000200 "userdata"
#mmcblk0p25: 01400000 00000200 "devlog"
#mmcblk0p27: 00040000 00000200 "pdata"
#mmcblk0p38: 1097fe000 00000200 "fat"
#mmcblk0p30: 00010000 00000200 "extra"
#mmcblk0p32: 01900000 00000200 "carrier"
#mmcblk0p16: 02d00000 00000200 "radio"
#mmcblk0p17: 00a00000 00000200 "adsp"
#mmcblk0p15: 00100000 00000200 "dsps"
#mmcblk0p18: 00500000 00000200 "wcnss"
#mmcblk0p19: 007ffa00 00000200 "radio_config"
#mmcblk0p23: 00400000 00000200 "modem_st1"
#mmcblk0p24: 00400000 00000200 "modem_st2"
#mmcblk0p31: 00040000 00000200 "skylink"
#mmcblk0p33: 00100000 00000200 "cdma_record"

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776704
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1426062336
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1241513472
BOARD_FLASH_BLOCK_SIZE := 131072

# to enable the GPS HAL
# BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := k2_cl

# AMSS version to use for GPS
# BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 3200

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 38
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Lights
TARGET_PROVIDES_LIBLIGHTS := true
