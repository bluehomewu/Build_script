#!/bin/bash
#Build Redmi Note 8 / 8T (ginkgo / willow)
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 50G
cd ~/havoc-11_Mi
. build/envsetup.sh
export HAVOC_BUILD_TYPE=Official
#bash external/motorola/faceunlock/regenerate/regenerate.sh
export SELINUX_IGNORE_NEVERALLOWS=true
brunch havoc_ginkgo-userdebug | tee havoc_ginkgo_Official_$(date +"%Y%m%d_%H.%M")GMT8.txt
