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

dnf install nginx -y &>> $logsfolder
validate $? "installing nginx"

dnf install mysql -y &>> $logsfolder
validate $? "installing mysql"

dnf install nodejs -y &>> $logsfolder
validate $? "installing nodejs"