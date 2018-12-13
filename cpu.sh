#!/bin/bash

cpu=`top -i1 -l1 | grep "CPU usage" | cut -d":" -f 2`

user=`echo $cpu | cut -d" " -f 1 | cut -d"." -f1`
sys=`echo $cpu | cut -d" " -f 3 | cut -d"." -f1`
idle=`echo $cpu | cut -d" " -f 5 | cut -d"." -f1`

printf -v upad "%02d" $user
printf -v spad "%02d" $sys
printf -v ipad "%02d" $idle

echo "CPU: User: $upad%, Sys: $spad%, Idle: $ipad%"