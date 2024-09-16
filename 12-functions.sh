#!/bin/bash

USERID=$(id -u)

check_root(){

if [ $USERID -ne 0 ]

then
echo "please run this script with root privileges"
exit 1
fi
}

Validate(){
    if [ $1 -ne 0 ]
    then 
        echo "$2 is not success ..check it"
        exit 1
    else 
        echo "$2 is success"
    fi   
}

check_root

dnf list installed git

if [ $? -ne 0 ]

then 
    echo "Git going to installed, going to install it.."
    dnf install git -y    # here installing
   Validate $? "installing git"       
else
    echo "Git already installed, nothing to do.."

fi


dnf list installed mysql  # checking whether mysql is installed or not

if [ $? -ne 0 ]
then 
    echo "mysql is going to be install it"
    dnf install mysql -y    # here installing
    Validate $? "installing mysql"
else
    echo "mysql is already installed,nothing to do"
fi
