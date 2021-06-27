#!/bin/bash
#Build Mi 10 Lite Zoom
export ALLOW_MISSING_DEPENDENCIES=true
cd ~/TWRP-10.0
. build/envsetup.sh
lunch omni_vangogh-eng
mka recoveryimage | tee twrp_vangogh_unofficial_$(date +"%Y%m%d_%H.%M")GMT8.txt