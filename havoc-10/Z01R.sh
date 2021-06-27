#!/bin/bash
#Build Z01R
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 50G
cd ~/havoc
. build/envsetup.sh
brunch havoc_Z01R-userdebug | tee havoc_Z01R_Official_$(date +"%Y%m%d_%H.%M")GMT8.txt