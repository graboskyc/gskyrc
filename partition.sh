#!/bin/bash

randArrayElement(){ arr=("${!1}"); echo ${arr["$[RANDOM % ${#arr[@]}]"]}; }
foo=("|" "\\" "/" "-")
randArrayElement "foo[@]"
