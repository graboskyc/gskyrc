#!/bin/bash

venvDir="pyVenv"`date +%s`
path=~/Desktop
if [[ `pwd` == *"Desktop"* ]] 
    then 
    path = `pwd`
    echo "Overriding directory"
fi

cd  ${path}

python -m virtualenv ${path}/${venvDir}

echo "pymongo
python-dateutil==2.7
requests
mtools[all]" > ${path}/${venvDir}/requirements.txt

${path}/${venvDir}/bin/pip install -r ${path}/${venvDir}/requirements.txt

echo 
echo "venv set up in: " ${venvDir}
echo

echo
echo "DONE!"
echo