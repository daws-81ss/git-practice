#!/bin/bash

USERID=$(id -u)

valid(){
    echo "exit status: $1"
}

if [ $USERID -ne 0 ]

then
echo "please run this script with root privileges"
exit 1
fi

dnf list installed git

valid $?