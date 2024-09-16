#!/bin/bash

USERID=$(id -u)

#echo "user id is: $USERID"

if [ $USERID -ne 0 ]

then
echo "please run this script with root privileges"
exit 1
fi

dnf list installed git  # Just checking whether installed or not

if [ $? -ne 0 ]

then 
    echo "Git going to installed, going to install it.."
    dnf install git -y    # here installing
    if [ $? -ne 0 ]
    then 
        echo "git installation is not success ..check it"
        exit 1
    else 
        echo "git installation is success"
    fi        
else
    echo "Git already installed, nothing to do.."

fi


dnf list installed mysql  # checking whether mysql is installed or not

if [ $? -ne 0 ]
then 
    echo "mysql is going to be install it"
    dnf install mysql -y    # here installing
    if [ $? -ne 0 ]
    then
        echo "mysql installtion is not success"
        exit 1
    else
        echo "mysql installation is successfully "   
    fi    
else
    echo "mysql is already installed,nothing to do"
fi

