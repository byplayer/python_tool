#!/bin/bash

set -ex

virtualenv -p python3 python_tool
source python_tool/bin/activate
pip install jedi flake8 importmagic autopep8 yapf

if [ -d bin ]; then
  rm -r bin
fi

mkdir bin

app_list=(autopep8 flake8 pyflakes wheel yapf)

for i in "${app_list[@]}"; do
  cp bin_templ bin/$i
done