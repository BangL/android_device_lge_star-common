# inherit from the proprietary version
-include vendor/lge/star-common/BoardConfigVendor.mk

# Misc
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := tegra
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_USE_NON_NEON_MEMCPY := true
TARGET_SPECIFIC_HEADER_PATH := device/lge/star-common/include
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/lge/star-common/releasetools/p990-newbl_ota_from_target_files
COMMON_GLOBAL_CFLAGS += -DICS_AUDIO_BLOB -DICS_CAMERA_BLOB -DHAVE_ISO

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
TARGET_NEEDS_BLUETOOTH_INIT_DELAY := true
BOARD_BLUEDROID_VENDOR_CONF := device/lge/star-common/configs/vnd_bt.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/star-common/bluetooth

# Wlan
BOARD_WLAN_DEVICE := bcm4329
WIFI_DRIVER_FW_PATH_STA := "/system/etc/wl/rtecdc.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/wl/rtecdc-apsta.bin"
WIFI_DRIVER_MODULE_NAME := "wireless"
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wireless.ko"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/wl/rtecdc.bin nvram_path=/etc/wl/nvram.txt config_path=/data/misc/wifi/config"
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
WIFI_DRIVER_HAS_LGE_SOFTAP := true
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WEXT_NO_COMBO_SCAN := true

# Graphics
BOARD_USE_SKIA_LCDTEXT := true
USE_OPENGL_RENDERER := true
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true
BOARD_EGL_CFG := device/lge/star-common/configs/egl.cfg
BOARD_EGL_NEEDS_LEGACY_FB := true

# Audio
TARGET_OVERLAY_ALWAYS_DETERMINES_FORMAT := true
TARGET_DONT_SET_AUDIO_AAC_FORMAT := true
BOARD_USES_AUDIO_LEGACY := true

# Camera
BOARD_CAMERA_HAVE_ISO := true

# Partitions
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# Buttons
BOARD_HAS_NO_SELECT_BUTTON := true

# Data
BOARD_MOBILEDATA_INTERFACE_NAME := "vsnet0"

# Recovery
TARGET_RECOVERY_PRE_COMMAND := "/system/bin/setup-recovery"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/fsl-tegra-udc/gadget/lun%d/file"

# Vibrator
BOARD_HAS_VIBRATOR_IMPLEMENTATION := ../../device/lge/star-common/vibrator/vibrator.c

# Light sensor
BOARD_SYSFS_LIGHT_SENSOR := "/sys/class/backlight/aat2870-backlight/brightness_mode"
