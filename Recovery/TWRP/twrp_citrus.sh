#!/bin/bash
#Build POCO M3
export ALLOW_MISSING_DEPENDENCIES=true
cd ~/TWRP-9.0
. build/envsetup.sh
lunch omni_citrus-eng
mka recoveryimage | tee twrp_citrus_unofficial_$(date +"%Y%m%d_%H.%M")GMT8.txt