#!/bin/bash
cd ../../../..
cd frameworks/av
git apply -v --check ../../device/nokia/Heart/nk3-patches/frameworks_av.patch
cd ../..
cd frameworks/base
git apply -v --check ../../device/nokia/Heart/nk3-patches/frameworks_base.patch
cd ../..
cd frameworks/native
git apply -v --check ../../device/nokia/Heart/nk3-patches/frameworks_native.patch
cd ../..
cd system/netd
git apply -v --check ../../device/nokia/Heart/nk3-patches/system_netd.patch
cd ../..
cd system/core
git apply -v --check ../../device/nokia/Heart/nk3-patches/system_core.patch
cd ../..
