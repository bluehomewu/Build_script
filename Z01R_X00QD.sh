#!/bin/bash
#Build Z01R
cd ~/havoc
. build/envsetup.sh
brunch havoc_Z01R-userdebug | tee havoc_Z01R_Official_$(date +"%Y%m%d_%H.%M")GMT8.txt
#Build X00QD
cd ~/havoc
. build/envsetup.sh
brunch havoc_X00QD-userdebug | tee havoc_X00QD_Official_$(date +"%Y%m%d_%H.%M")GMT8.txt