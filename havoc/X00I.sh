#!/bin/bash
#Build X00I
cd ~/havoc
. build/envsetup.sh
brunch havoc_X00I-userdebug | tee havoc_X00I_Unofficial_$(date +"%Y%m%d_%H.%M")GMT8.txt