#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 - 2018 The LineageOS Project
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

# lunch command for Heart
for var in eng userdebug; do
  add_lunch_combo lineage_Heart-$var
done

# Auto Patches
cd frameworks/av
git apply -v ../../device/nokia/Heart/patches/0001-frameworks_av.patch
cd ../..
cd frameworks/base
git apply -v ../../device/nokia/Heart/patches/0002-frameworks_base.patch
cd ../..
cd system/netd
git apply -v ../../device/nokia/Heart/patches/0004-system_netd.patch
cd ../..
cd system/core
git apply -v ../../device/nokia/Heart/patches/0005-system_core.patch
cd ../..
cd frameworks/native
git apply -v ../../device/nokia/Heart/patches/0003-frameworks_native.patch
cd ../..

echo " PATCH NOKIA-3 (Heart) DONE !!!"
echo ""
echo ""
