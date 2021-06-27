#!/bin/bash
#Build HMD PNX_sprout Nokia 8.1
export ALLOW_MISSING_DEPENDENCIES=true
cd ~/TWRP-10.0
. build/envsetup.sh
lunch omni_PNX_sprout-eng
mka recoveryimage | tee twrp_PNX_sprout_unofficial_$(date +"%Y%m%d_%H.%M")GMT8.txt