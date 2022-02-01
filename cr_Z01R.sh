#!/bin/bash
# Build Z01R
cd ~/crDroid-12
# repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
. build/envsetup.sh
export CCACHE_DIR=/tmp/ccache
export CCACHE_EXEC=$(which ccache)
export USE_CCACHE=1
ccache -M 50G
ccache -z
# sync Device sources
cd ~/crDroid-12/device/asus/Z01R && git pull -f
cd ~/crDroid-12/kernel/asus/sdm845 && git pull -f
cd ~/crDroid-12/vendor/asus/Z01R && git pull -f
cd ~/crDroid-12
#export SELINUX_IGNORE_NEVERALLOWS=true
brunch lineage_Z01R-userdebug | tee crDroid_Z01R_Official_$(date +"%Y%m%d_%H.%M")GMT8.txt
# . ~/crDroid/createjson.sh
