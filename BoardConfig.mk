# Copyright (C) 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from common msm7x27a
-include device/htc/msm7x27a-common/BoardConfigCommon.mk

# Platform
TARGET_BOOTLOADER_BOARD_NAME := golfu

# Kernel
TARGET_KERNEL_SOURCE := kernel/htc/golfu
TARGET_KERNEL_CONFIG := golfu_defconfig
BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=null androidboot.hardware=golfu androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x13000000

# UMS
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_otg/msm_hsusb/gadget/lun0/file"
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_otg/msm_hsusb/gadget/lun0/file"

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/golfu/bluetooth

# Wi-Fi
BOARD_WLAN_DEVICE := ath6kl
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/ath6kl_sdio.ko"
WIFI_DRIVER_MODULE_NAME := "ath6kl_sdio"
WIFI_DRIVER_MODULE_ARG := "suspend_mode=3 wow_mode=2 recovery_enable=1"
WIFI_DRIVER_MODULE_AP_ARG := "suspend_mode=3 wow_mode=2 recovery_enable=1"
WIFI_EXT_MODULE_PATH := "/system/lib/modules/cfg80211.ko"
WIFI_EXT_MODULE_NAME := "cfg80211"

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := msm7x27a
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# FM Radio
#BOARD_HAVE_QCOM_FM := true
BOARD_HAVE_FM_RADIO := true
BOARD_VENDOR_USE_AKMD := akm8975
BOARD_VENDOR_QCOM_AMSS_VERSION := 6225

# Recovery
TARGET_RECOVERY_FSTAB := device/htc/golfu/ramdisk/fstab.golfu
BOARD_HAS_NO_SELECT_BUTTON := true
#TARGET_RECOVERY_INITRC := device/htc/golfu/recovery/init.recovery.golfu.rc

RECOVERY_VARIANT := omni

# TWRP
ifeq ($(RECOVERY_VARIANT),omni)
  TARGET_RECOVERY_INITRC := device/htc/golfu/recovery/init.twrp.rc
  DEVICE_RESOLUTION := 320x480
  TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
  RECOVERY_GRAPHICS_USE_LINELENGTH := true
endif

# Partition sizes
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 4194304
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8909824
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 836763136
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1023409664
BOARD_FLASH_BLOCK_SIZE := 2048