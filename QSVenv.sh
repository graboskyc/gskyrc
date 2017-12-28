#!/bin/bash

venvDir="pyVenv"`date +%s`
path="/mnt/c/Users/chris/Desktop"
if [[ `pwd` == *"Desktop"* ]] 
    then 
    path = `pwd`
    echo "Overriding directory"
fi

cd  ${path}

python -m virtualenv ${path}/${venvDir}

echo "cloudshell-shell-core>=2.4.0
cloudshell-networking>=4.0.0,<4.1.0
cloudshell-networking-devices>=2.2,<2.3
cloudshell-snmp
cloudshell_automation_api
cloudshell-cli
requests
shellfoundry" > ${path}/${venvDir}/requirements.txt

${path}/${venvDir}/bin/pip install -r ${path}/${venvDir}/requirements.txt

echo 
echo "venv set up in: " ${venvDir}
echo

echo "configuring shellfoundry"
${path}/${venvDir}/bin/shellfoundry config host 192.168.2.251
${path}/${venvDir}/bin/shellfoundry config 

echo 
echo
echo "DONE!"
echo