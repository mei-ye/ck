#!/bin/bash

if [ ! -d "log" ]; then
    echo "git clone --recursive ${CM_GIT_LOG_URL} log"
    git clone --recursive ${CM_GIT_LOG_URL} log
    test $? -eq 0 || exit 1
fi

cmd="${CM_PYTHON_BIN_WITH_PATH} ${CM_TMP_CURRENT_SCRIPT_PATH}/process.py"

echo $cmd

eval $cmd
