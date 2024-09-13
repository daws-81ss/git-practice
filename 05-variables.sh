#!/bin/bash

echo "please enter your username::"

#read USERNAME  # here username is variable and takes input into it 

read -s USERNAME # IF WE GIVE -S WE CANNOT SEE INPUT WHILE ENTERING DATA IN TERMINAL

echo "username entered is: $USERNAME"

echo "please enter password::"

read -s PASSWORD

echo "password entered is : $PASSWORD"



