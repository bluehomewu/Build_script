#!/bin/bash
#Build Z01R
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 50G
cd ~/Descendant
. build/envsetup.sh
cd ~/Descendant/device/asus/Z01R && git pull -f
cd ~/Descendant/kernel/asus/sdm845 && git pull -f
cd ~/Descendant/vendor/asus/Z01R && git pull -f
cd ~/Descendant
export SELINUX_IGNORE_NEVERALLOWS=true
brunch descendant_Z01R-userdebug | tee descendant_Z01R_Unofficial_$(date +"%Y%m%d_%H.%M")GMT8.txt
