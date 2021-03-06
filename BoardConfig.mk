#
# Copyright (C) 2015 The CyanogenMod Project
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
#

include device/oppo/msm8939-common/BoardConfigCommon.mk

DEVICE_PATH := device/oppo/r5

# Assert
TARGET_OTA_ASSERT_DEVICE := r5,R8106,R8107

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Kernel
BOARD_KERNEL_CMDLINE += ramoops.mem_address=0x9ff00000 ramoops.mem_size=0x400000
BOARD_RAMDISK_OFFSET := 0x01000000
TARGET_KERNEL_CONFIG := cyanogenmod_r5_defconfig

# Partition info
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 134217728
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1388314624
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3221225472

# DTB image generation
TARGET_NEEDS_V3_DTB_IMAGE := true

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"

# inherit from the proprietary version
-include vendor/oppo/r5/BoardConfigVendor.mk
