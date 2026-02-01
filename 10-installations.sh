#!/bin/bash

userid=$(id -u)

if [$userid -ne 0 ]; then
    echo 'please run this script as root user'
fi

echo "installing nginx web server"
dnf install nginx -y