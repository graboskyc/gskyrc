#!/bin/bash
echo "CPU: " `top -i1 -l1 | grep "CPU usage" | cut -d":" -f 2`
