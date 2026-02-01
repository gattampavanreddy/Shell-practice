#!/bin/bash

#### Special Variables in Bash ####

echo "all arguments passed to script: $@"
echo "number of variables passed: $#"
echo "script name: $0"
echo "present which directory you are in: $PWD"
echo "who is runninf this script: $USER"
echo "home directory of the user: $HOME"
echo "pid of the current script: $$"
sleep 100 &
echo "pid of recently executed background process: $!"
echo "all arguments passed to script: $*"
echo "last command exit status: $?"

