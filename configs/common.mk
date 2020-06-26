#
# Copyright (C) 2020 P404 Project
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

# Inherit art options
include vendor/404/configs/art.mk

# Branding stuffs
include vendor/404/configs/branding.mk

# Fonts
include vendor/404/configs/fonts.mk

# Packages
include vendor/404/configs/packages.mk

# Props
include vendor/404/configs/props.mk

# 404 Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/handheld_core_hardware.xml \
    vendor/404/configs/permissions/privapp-permissions-p404-system.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-p404.xml \
    vendor/404/configs/permissions/privapp-permissions-p404-product.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-p404.xm

# Backup Services whitelist
PRODUCT_COPY_FILES += \
    vendor/404/configs/permissions/backup.xml:system/etc/sysconfig/backup.xml

# Common overlays
DEVICE_PACKAGE_OVERLAYS += vendor/404/overlay

# Lawnchair
PRODUCT_COPY_FILES += \
    vendor/404/configs/permissions/privapp-permissions-lawnchair.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-lawnchair.xml \
    vendor/404/configs/sysconfig/lawnchair-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/lawnchair-hiddenapi-package-whitelist.xml

# Markup Google
PRODUCT_COPY_FILES += \
    vendor/404/prebuilt/lib/libsketchology_native.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libsketchology_native.so \
    vendor/404/prebuilt/lib64/libsketchology_native.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libsketchology_native.so

# Turbo
PRODUCT_COPY_FILES += \
    vendor/404/configs/permissions/privapp-permissions-turbo.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-turbo.xml \
    vendor/404/configs/sysconfig/turbo.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/turbo.xml

# World APN list
PRODUCT_COPY_FILES += \
    vendor/404/prebuilt/etc/apns-conf.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/apns-conf.xml
