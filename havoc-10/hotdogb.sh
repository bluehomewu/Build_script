#!/bin/bash
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 50G
cd ~/havoc
. build/envsetup.sh
export WITH_GAPPS=false
brunch havoc_hotdogb-userdebug | tee havoc_hotdogb_Unofficial_$(date +"%Y%m%d_%H.%M")GMT8.txt
cd ~/havoc-Gapps
. build/envsetup.sh
export WITH_GAPPS=true && export TARGET_GAPPS_ARCH=arm64
brunch havoc_hotdogb-userdebug | tee havoc_hotdogb_Unofficial_Gapps_$(date +"%Y%m%d_%H.%M")GMT8.txt