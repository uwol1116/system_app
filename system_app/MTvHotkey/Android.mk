# Copyright (C) 2014 The Android Open Source Project
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

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_PACKAGE_NAME := MTvHotkey
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_PROGUARD_FLAG_FILES := proguard.cfg

# MStar Android Patch Begin
LOCAL_JAVA_LIBRARIES := com.mstar.android
# MStar Android Patch End

LOCAL_STATIC_JAVA_LIBRARIES := \
    android-support-v7-recyclerview \
    android-support-v13 \
    android-support-v17-leanback

LOCAL_RESOURCE_DIR := \
    $(LOCAL_PATH)/res \
    $(TOP)/frameworks/support/v17/leanback/res \
    $(TOP)/frameworks/support/v7/recyclerview/res
 

LOCAL_AAPT_FLAGS := --auto-add-overlay \
    --extra-packages android.support.v17.leanback:android.support.v7.recyclerview

LOCAL_SRC_FILES := \
    $(call all-java-files-under, src) 
include $(BUILD_PACKAGE)
