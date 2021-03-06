#
# Copyright (C) 2016 The CyanogenMod Project
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

FORCE_32_BIT := true

include device/cyanogen/msm8916-common/BoardConfigCommon.mk

DEVICE_PATH := device/wingtech/wt88047
include $(DEVICE_PATH)/board/*.mk

# TWRP
RECOVERY_VARIANT := twrp
TW_THEME := portrait_hdpi
TW_CUSTOM_THEME := $(DEVICE_PATH)/twrp-theme/material-tesla
TW_TARGET_USES_QCOM_BSP := false
TW_NEW_ION_HEAP := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_INCLUDE_CRYPTO := true
RECOVERY_SDCARD_ON_DATA := true

# inherit from the proprietary version
-include vendor/wingtech/wt88047/BoardConfigVendor.mk
