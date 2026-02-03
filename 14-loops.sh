#!/bin/bash

userid=$(id -u)
logfolder="/var/log/shell-script" 

if [ $userid -ne 0 ]; then
    echo 'please run this script as root user'
    exit 1
fi

mkdir -p $logsfolder

#by default shell will not execute, only executed when called
validate(){
       if [ $1 -ne 0 ]; then
    echo "$2 failed" |& tee -a $logsfolder
    exit 1
else
    echo "$2 successfully" |& tee -a $logsfolder
fi 

}

for package in $@  #sudo sh 14-loops.sh nginx mysql nodejs
do 
   dnf install $package -y 
   validate $? "$package installation"
done