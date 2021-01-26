#!/bin/bash
#Build Mi 10 Lite Zoom
export ALLOW_MISSING_DEPENDENCIES=true
cd ~/omni-10.0
. build/envsetup.sh
lunch omni_monet-userdebug
mka recoveryimage | tee twrp_monet_unofficial_$(date +"%Y%m%d_%H.%M")GMT8.txt