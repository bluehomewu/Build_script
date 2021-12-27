#!/bin/bash
#Build NB1
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
export CCACHE_DIR=~/.ccache
ccache -M 50G
cd ~/arrow-12
. build/envsetup.sh
cd ~/arrow-12/device/nokia/NB1 && git pull -f
cd ~/arrow-12/kernel/nokia/msm8998 && git pull -f
cd ~/arrow-12/vendor/nokia/NB1 && git pull -f
cd ~/arrow-12
rm -rf  out/target/product/*
export ARROW_GAPPS=true
export TARGET_GAPPS_ARCH=arm64
export SELINUX_IGNORE_NEVERALLOWS=true
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true
. build/envsetup.sh
lunch arrow_NB1-userdebug
make bacon | tee arrow_NB1_12_Unofficial_$(date +"%Y%m%d_%H.%M")GMT8.txt
