#!/bin/bash
#Build Z01R
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 50G
cd ~/havoc-11_ASUS
. build/envsetup.sh
cd ~/havoc-11_ASUS/device/asus/Z01R && git pull -f
cd ~/havoc-11_ASUS/kernel/asus/sdm845 && git pull -f
cd ~/havoc-11_ASUS/vendor/asus/Z01R && git pull -f
cd ~/havoc-11_ASUS
export HAVOC_BUILD_TYPE=Official
#bash external/motorola/faceunlock/regenerate/regenerate.sh
export SELINUX_IGNORE_NEVERALLOWS=true
brunch havoc_Z01R-userdebug | tee havoc_Z01R_Official_$(date +"%Y%m%d_%H.%M")GMT8.txt
