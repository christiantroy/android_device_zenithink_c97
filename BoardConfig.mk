#
# Copyright (C) 2012 The Android Open-Source Project
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

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Use the non-open-source parts, if they're present
-include vendor/zenithink/c97/BoardConfigVendor.mk

# Alsa
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# Camera
USE_CAMERA_STUB := false
BOARD_HAVE_FRONT_CAM := true
BOARD_HAVE_BACK_CAM := true

# Amlogic stuff
BUILD_WITH_AMLOGIC_PLAYER := true
BOARD_USE_DEFAULT_APPINSTALL := true
BOARD_USE_DEFAULT_HDMISWITCH := true
BOARD_USE_AML_STANDARD_RIL := true
BOARD_USES_USB_PM := true
BOARD_PROVIDES_MALI := true
TARGET_USE_AMLOGIC_MKYAFFS_TOOL := true
TARGET_AMLOGIC_MKYAFFSIMG_TOOL := mkyaffsimage4K.dat

# Wifi
BOARD_WLAN_DEVICE := rtl8192cu
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_rtl
BOARD_HOSTAPD_DRIVER        := WEXT
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_rtl
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_FW_PATH_PARAM   := ""
WIFI_DRIVER_FW_PATH_STA     := ""
WIFI_DRIVER_FW_PATH_AP      := ""
WIFI_DRIVER_FW_PATH_P2P     := ""
WIFI_DRIVER_MODULE_NAME     := "wlan"
WIFI_DRIVER_MODULE_ARG      := "rtw_power_mgnt=2"
TARGET_CUSTOM_WIFI := ../../device/zenithink/c97/wifi_realtek.c

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_VFP := true
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_ARMV7A := true
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp

TARGET_BOARD_PLATFORM := meson6
TARGET_BOOTLOADER_BOARD_NAME := g06ref
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true
TARGET_NO_RADIOIMAGE := true
TARGET_SIMULATOR := false
TARGET_PROVIDES_INIT_RC := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912
BOARD_FLASH_BLOCK_SIZE := 4096

BOARD_EGL_CFG := device/zenithink/c97/egl.cfg
USE_OPENGL_RENDERER := true
ENABLE_WEBGL := true
BOARD_USE_SKIA_LCDTEXT := true

TARGET_BOOTANIMATION_PRELOAD := true

TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"

COMMON_GLOBAL_CFLAGS += -DSURFACEFLINGER_FORCE_SCREEN_RELEASE