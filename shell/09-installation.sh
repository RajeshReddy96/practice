#!/bin/bash

USERID=$(id -u)
#echo "user id is: $USERID"

if [ $USERID -ne 0 ]
then 
    echo "please run this scriprt with root priviliges"
    exit 1
fi

dnf list installed git
# just checking weather installed or not

if [ $? -ne 0 ]
then 
    echo "Git is not installed, going to install it .."
    dnf install git -y #here installing
    if [ $? -ne 0 ]
    then 
        echo "Git installtion is not successs, check it"
    exit 1
    else 
    echo "Git installation is success"
    fi
else 
    echo "Git is already installed, nothing to do .."
fi

dnf list installed mysql

if [ $? -ne 0 ]
then 
    echo "mysql is not installed  .. going to install it"
    dnf install mysql -y
    if [ $? -ne 0 ]
    then 
        echo "mysql installation failed , pls check"
        exit 1
    else    
        "mysql installed success"
    fi
else
    echo "mysql is already installed . nothing to do"
fi