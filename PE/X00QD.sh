#!/bin/bash
#Build X00QD
cd ~/PE-11
. build/envsetup.sh
brunch aosp_X00QD-userdebug | tee aosp_X00QD_Unofficial_$(date +"%Y%m%d_%H.%M")GMT8.txt