#!/bin/bash
#Build Nokia 8 (NB1)
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 50G
# Go into Havoc OS Android 11 source.
cd ~/havoc-11_Gapps_Nokia
. build/envsetup.sh
# Sync Devices Trees.
cd ~/havoc-11_Gapps_Nokia/device/nokia/NB1 && git pull -f
cd ~/havoc-11_Gapps_Nokia/device/nokia/msm8998-common && git pull -f
# Sync Kernel Tree.
cd ~/havoc-11_Gapps_Nokia/kernel/nokia/msm8998 && git pull -f
#git reset --hard c4a271703b49ffa827decb65ccb399ffc573864a && git clean -f
# Sync Vendor Tree.
cd ~/havoc-11_Gapps_Nokia/vendor/nokia && git pull -f
# Go back to Havoc OS Android 11 source.
cd ~/havoc-11_Gapps_Nokia
rm -rf  out/target/product/*
export WITH_GAPPS=true
export TARGET_GAPPS_ARCH=arm64
export HAVOC_BUILD_TYPE=Official
#bash external/motorola/faceunlock/regenerate/regenerate.sh
export SELINUX_IGNORE_NEVERALLOWS=true
brunch havoc_NB1-userdebug | tee havoc_NB1_Official_Gapps_$(date +"%Y%m%d_%H.%M")GMT8.txt
