#!/bin/bash

foo=("/" "-" "\\" "|")
s=`date "+%s"`
let m="s%4"
echo ${foo[m]}