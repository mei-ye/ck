#!/bin/bash

if [ ! -d "log" ]; then
    echo "git clone --recursive ${CM_GIT_URL} -b "${CM_GIT_CHECKOUT}" log"
    git clone --recursive ${CM_GIT_URL} -b "${CM_GIT_CHECKOUT}" log
    test $? -eq 0 || exit 1
fi

cmd="${CM_PYTHON_BIN_WITH_PATH} ${CM_TMP_CURRENT_SCRIPT_PATH}/process.py"

echo $cmd

eval $cmd
