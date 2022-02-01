#!/bin/bash
#Build Z01R
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
export CCACHE_DIR=~/.ccache
ccache -M 100G
cd ~/arrow-12
. build/envsetup.sh
# cd ~/arrow-12/device/asus/Z01R && git pull -f
cd ~/arrow-12/kernel/asus/sdm845 && git pull -f
cd ~/arrow-12/vendor/asus/ && git pull -f
cd ~/arrow-12
rm -rf  out/target/product/*
export ARROW_GAPPS=true
export TARGET_GAPPS_ARCH=arm64
export SELINUX_IGNORE_NEVERALLOWS=true
. build/envsetup.sh
lunch arrow_Z01R-userdebug
make bacon | tee arrow_Z01R_12_Unofficial_$(date +"%Y%m%d_%H.%M")GMT8.txt
