#!/bin/bash
#Build HMD BGT_sprout Nokia 8.3 (5G)
export ALLOW_MISSING_DEPENDENCIES=true
cd ~/TWRP-10.0
. build/envsetup.sh
lunch omni_BGT_sprout-eng
mka recoveryimage | tee twrp_BGT_sprout_unofficial_$(date +"%Y%m%d_%H.%M")GMT8.txt