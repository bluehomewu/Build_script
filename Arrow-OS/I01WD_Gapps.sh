#!/bin/bash
#Build I01WD
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
export CCACHE_DIR=~/.ccache
ccache -M 50G
cd ~/arrow-12
. build/envsetup.sh
cd ~/arrow-12/device/asus/I01WD && git pull -f
cd ~/arrow-12/kernel/asus/sm8150 && git pull -f
#cd ~/arrow-12/vendor/asus/ && git pull -f
cd ~/arrow-12
rm -rf  out/target/product/*
export ARROW_GAPPS=true
export TARGET_GAPPS_ARCH=arm64
export SELINUX_IGNORE_NEVERALLOWS=true
. build/envsetup.sh
lunch arrow_I01WD-userdebug
make bacon | tee arrow_I01WD_12_Unofficial_$(date +"%Y%m%d_%H.%M")GMT8.txt
