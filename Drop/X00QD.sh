#!/bin/bash
#Build X00QD
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 50G
cd ~/havoc-11_ASUS
. build/envsetup.sh
cd ~/havoc-11_ASUS/device/asus/X00QD && git pull -f
cd ~/havoc-11_ASUS/kernel/asus/sdm660 && git pull -f
cd ~/havoc-11_ASUS/vendor/asus/X00QD && git pull -f
cd ~/havoc-11_ASUS
rm -rf  out/target/product/*
export WITH_GAPPS=false
export TARGET_GAPPS_ARCH=arm64
export HAVOC_BUILD_TYPE=Official
#bash external/motorola/faceunlock/regenerate/regenerate.sh
export SELINUX_IGNORE_NEVERALLOWS=true
export HAVOC_BUILD_TYPE=Official
brunch havoc_X00QD-userdebug | tee havoc_X00QD_Official_$(date +"%Y%m%d_%H.%M")GMT8.txt