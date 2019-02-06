#!/bin/bash

# UNCOMMENT BELOW FOR MAC
ram=`sysctl -n hw.memsize`
let ram="ram/1024/1024/1024"
used=`top -i1 -l1 | grep "Phy" | cut -d" " -f 2`
echo "RAM Used: ${used}GB/${ram}GB"

# UNCOMMENT BELOW FOR LINUX
#ram=` free -m | head -n 2 | tail -n 1 | cut -d":" -f 2 | sed --expression='s/ \+/ /g' | cut -d" " -f 2`
#used=` free -m | head -n 2 | tail -n 1 | cut -d":" -f 2 | sed --expression='s/ \+/ /g' | cut -d" " -f 3`
#echo "RAM Used: ${used}MB/${ram}MB"