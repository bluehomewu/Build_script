#!/bin/bash
#Build X00I
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 50G
cd ~/havoc-11_backup
. build/envsetup.sh
brunch havoc_X00H-userdebug | tee havoc_X00H_Unofficial_$(date +"%Y%m%d_%H.%M")GMT8.txt