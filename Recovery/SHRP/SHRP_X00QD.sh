#!/bin/bash
#Build X00QD
export ALLOW_MISSING_DEPENDENCIES=true
cd ~/SHRP
. build/envsetup.sh
lunch omni_X00Q-eng
mka recoveryimage | tee SHRP_X00QD_unofficial_$(date +"%Y%m%d_%H.%M")GMT8.txt
