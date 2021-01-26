#!/bin/bash
#Build X00I
export ALLOW_MISSING_DEPENDENCIES=true
cd ~/SHRP
. build/envsetup.sh
lunch omni_X00I-eng
mka recoveryimage | tee SHRP_X00I_unofficial_$(date +"%Y%m%d_%H.%M")GMT8.txt
