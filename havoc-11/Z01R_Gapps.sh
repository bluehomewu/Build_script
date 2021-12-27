#!/bin/bash
#Build Z01R Based on los
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 50G
cd ~/havoc-11_los
. build/envsetup.sh
cd ~/havoc-11_los/device/asus/Z01R && git pull -f
cd ~/havoc-11_los/kernel/asus/sdm845
cd ~/havoc-11_los/vendor/asus/Z01R && git pull -f
cd ~/havoc-11_los
rm -rf  out/target/product/*
export WITH_GAPPS=true
export TARGET_GAPPS_ARCH=arm64
export HAVOC_BUILD_TYPE=Official
#bash external/motorola/faceunlock/regenerate/regenerate.sh
export SELINUX_IGNORE_NEVERALLOWS=true
brunch havoc_Z01R-userdebug | tee havoc_Z01R_Official_$(date +"%Y%m%d_%H.%M")GMT8.txt
