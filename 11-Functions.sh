#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]; then
    echo 'please run this script as root user'
    exit 1
fi


#by default shell will not execute, only executed when called
validate(){
       if [ $1 -ne 0 ]; then
    echo "$2 failed"
    exit 1
else
    echo "$2 successfully"
fi 

}

dnf install nginx -y
validate $? "installing nginx"

dnf instal mysql -y
validate $? "installing mysql"

dnf install nodejs -y
validate $? "installing nodejs"
