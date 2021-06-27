#!/bin/bash
#Build FIH E2M
export ALLOW_MISSING_DEPENDENCIES=true
cd ~/TWRP-9.0
. build/envsetup.sh
lunch omni_E2M-eng
mka recoveryimage | tee twrp_E2M_unofficial_$(date +"%Y%m%d_%H.%M")GMT8.txt