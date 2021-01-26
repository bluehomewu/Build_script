#!/bin/bash
#Build X00QD
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 50G
cd ~/havoc-11
. build/envsetup.sh
bash external/motorola/faceunlock/regenerate/regenerate.sh
export HAVOC_BUILD_TYPE=Official
brunch havoc_X00QD-userdebug | tee havoc_X00QD_Official_$(date +"%Y%m%d_%H.%M")GMT8.txt