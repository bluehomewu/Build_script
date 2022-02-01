#!/bin/bash
#Build Z01R
mkdir -p /tmp/ccache
export USE_CCACHE=1
export CCACHE_DIR=/tmp/ccache
export CCACHE_EXEC=$(which ccache)
ccache -z
ccache -M 100G
cd ~/Project-Kaleidoscope
. build/envsetup.sh
cd ~/Project-Kaleidoscope/device/asus/Z01R && git pull -f
cd ~/Project-Kaleidoscope/kernel/asus/sdm845 && git pull -f
cd ~/Project-Kaleidoscope/vendor/asus/Z01R && git pull -f
cd ~/Project-Kaleidoscope
rm -rf  out/target/product/*
#export ARROW_GAPPS=true
#export TARGET_GAPPS_ARCH=arm64
export SELINUX_IGNORE_NEVERALLOWS=true
. build/envsetup.sh
lunch kscope_Z01R-userdebug
make bacon | tee kscope_Z01R_12_Unofficial_$(date +"%Y%m%d_%H.%M")GMT8.txt
