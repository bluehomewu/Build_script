#!/bin/bash
#Build X00QD
cd ~/havoc
. build/envsetup.sh
brunch havoc_X00QD-userdebug | tee havoc_X00QD_Official_$(date +"%Y%m%d_%H.%M")GMT8.txt