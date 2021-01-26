#!/bin/bash
#Build herolte
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 50G
cd ~/havoc
. build/envsetup.sh
brunch havoc_herolte-eng | tee havoc_herolte_Unofficial_$(date +"%Y%m%d_%H.%M")GMT8.txt
