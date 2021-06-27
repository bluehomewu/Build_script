#!/bin/bash
# Build Z01R
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 50G
cd ~/crDroid
# repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
. build/envsetup.sh
# sync Device sources
cd ~/crDroid/device/asus/Z01R && git pull -f
cd ~/crDroid/kernel/asus/sdm845 && git pull -f
cd ~/crDroid/vendor/asus/Z01R && git pull -f
cd ~/crDroid
#export SELINUX_IGNORE_NEVERALLOWS=true
brunch lineage_Z01R-userdebug | tee crDroid_Z01R_Official_$(date +"%Y%m%d_%H.%M")GMT8.txt
. ~/crDroid/createjson.sh
