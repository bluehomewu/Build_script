#!/bin/bash
#Build X00QD
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 50G
cd ~/PE-11
. build/envsetup.sh
brunch aosp_X00QD-userdebug | tee aosp_X00QD_Unofficial_$(date +"%Y%m%d_%H.%M")GMT8.txt