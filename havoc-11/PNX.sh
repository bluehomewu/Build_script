#!/bin/bash
#Build Nokia 8.1 / X7 (PNX)
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 50G
# Go into Havoc OS Android 11 source.
cd ~/havoc-11_Gapps_Nokia
. build/envsetup.sh
# Sync Devices Trees.
#cd ~/havoc-11_Gapps_Nokia/device/nokia/PNX_sprout && git pull -f
cd ~/havoc-11_Gapps_Nokia/device/nokia/sdm710-common && git pull -f
# Sync Kernel Tree.
cd ~/havoc-11_Gapps_Nokia/kernel/nokia/sdm710 && git pull -f
# Sync Vendor Tree.
#cd ~/havoc-11_Gapps_Nokia/vendor/nokia && git pull -f
# Go back to Havoc OS Android 11 source.
cd ~/havoc-11_Gapps_Nokia
#rm -rf  out/target/product/*
#export WITH_GAPPS=false
#export TARGET_GAPPS_ARCH=arm64
#export HAVOC_BUILD_TYPE=Official
#bash external/motorola/faceunlock/regenerate/regenerate.sh
export SELINUX_IGNORE_NEVERALLOWS=true
brunch havoc_PNX_sprout-userdebug | tee havoc_PNX_sprout_Unofficial_$(date +"%Y%m%d_%H.%M")GMT8.txt
