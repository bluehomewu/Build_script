#!/bin/bash
#Build Z01R
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 50G
cd ~/havoc-11
. build/envsetup.sh
export HAVOC_BUILD_TYPE=Official
export SELINUX_IGNORE_NEVERALLOWS=true
brunch havoc_Z01R-userdebug | tee havoc_Z01R_Official_$(date +"%Y%m%d_%H.%M")GMT8.txt
