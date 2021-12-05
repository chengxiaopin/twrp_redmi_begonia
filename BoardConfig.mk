
ALLOW_MISSING_DEPENDENCIES := true

PLATFORM_VERSION := 16.1.0
PLATFORM_SECURITY_PATCH := 2099-12-31

BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_RECOVERY_ADD_HASH_FOOTER_ARGS += \
	--prop com.android.build.boot.os_version:$(PLATFORM_VERSION) \
    --prop com.android.build.boot.security_patch:$(PLATFORM_SECURITY_PATCH)
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA2048
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x4000000

BOARD_DTBOIMG_PARTITION_SIZE := 0x2000000
BOARD_FLASH_BLOCK_SIZE := 0x80000
BOARD_HAS_LARGE_FILESYSTEM := true


BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x4000000

BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_RAMDISK_OFFSET := 0x07c08000
BOARD_KERNEL_TAGS_OFFSET := 0x0bc08000
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_DTB_OFFSET := 0x0bc08000
BOARD_MKBOOTIMG_ARGS := \
	--ramdisk_offset $(BOARD_RAMDISK_OFFSET) \
	--tags_offset $(BOARD_KERNEL_TAGS_OFFSET) \
	--header_version $(BOARD_BOOTIMG_HEADER_VERSION) \
	--dtb_offset $(BOARD_DTB_OFFSET)

DEVICE_PATH := device/redmi/begonia
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/prebuilt/dtb
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz

RECOVERY_SDCARD_ON_DATA := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a76

TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a

TARGET_BOARD_PLATFORM := mt6785
TARGET_BOARD_PLATFORM_GPU := mali-g76mc4

TARGET_BOOTLOADER_BOARD_NAME := begonia
TARGET_COPY_OUT_VENDOR := vendor

TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a76

TARGET_NO_BOOTLOADER := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USES_LOGD := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_DEFAULT_BRIGHTNESS := 900
TW_DEFAULT_LANGUAGE := zh_CN
TW_DEVICE_VERSION := MIUI_12.5
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXCLUDE_TWRPAPP := true
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTRA_LANGUAGES := true
TW_H_OFFSET := -80
TW_Y_OFFSET := 80

TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_RESETPROP := true

TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_MAX_BRIGHTNESS := 2047
TW_NO_REBOOT_RECOVERY := false
TW_SCREEN_BLANK_ON_BOOT := true
TW_THEME := portrait_hdpi
TW_USE_FSCRYPT_POLICY := 1
TW_USE_TOOLBOX := true

TWRP_INCLUDE_LOGCAT := true
VENDOR_SECURITY_PATCH := 2099-12-31


SHRP_CUSTOM_FLASHLIGHT := true
SHRP_DARK := true
SHRP_DEVICE_CODE := begonia
SHRP_DEVICE_TYPE := A_Only
SHRP_EXTERNAL := /external_sd
SHRP_FLASH := 1
SHRP_FLASH_MAX_BRIGHTNESS := 4
SHRP_FONP_1 := /sys/class/leds/torch-light0/brightness
SHRP_FONP_2 := /sys/class/leds/torch-light1/brightness
SHRP_FONP_3 := /sys/class/leds/torch-light2/brightness
SHRP_INTERNAL := /sdcard
SHRP_MAINTAINER := RC1844
SHRP_OTG := /usb_otg
SHRP_PATH := device/redmi/begonia
SHRP_REC := /dev/block/platform/bootdevice/by-name/recovery
SHRP_SKIP_DEFAULT_ADDON_1 := true
SHRP_SKIP_DEFAULT_ADDON_2 := true
SHRP_SKIP_DEFAULT_ADDON_3 := true
SHRP_SKIP_DEFAULT_ADDON_4 := true
# INC_IN_REC_ADDON_1 := true
# INC_IN_REC_ADDON_2 := true
# INC_IN_REC_ADDON_3 := true
# INC_IN_REC_ADDON_4 := true
# INC_IN_REC_MAGISK := true

MAINTAINER := RC1844
PB_TORCH_MAX_BRIGHTNESS := 4
PB_TORCH_PATH := /sys/class/leds/torch-light0
