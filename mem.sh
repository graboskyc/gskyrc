#!/bin/bash

ram=`sysctl -n hw.memsize`
let ram="ram/1024/1024/1024"
used=`top -i1 -l1 | grep "Phy" | cut -d" " -f 2`
echo "RAM Used: ${used}B/${ram}GB"
