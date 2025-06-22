#!/bin/bash

USERID=$(id -u)

CHECK_ROOT(){
    if [$USERID -ne 0 ]
    then 
        echo "please run this script with root priviliges"
        exit 1
    fi
}

VALIDATE(){
    if [ $1 -ne 0 ]
    then           
        echo "$2 is failed"
        exit 1
    else
        echo "$2 success"
    fi
}

CHECK_ROOT

dnf list installed git

if [ $? -ne 0 ]
then
    echo "Git is not installed , going to install"
    dnf install git -y
    VALIDATE $? "Installing Git"
else
    echo "GIt is already installed, nothing to do.."
fi

dnf list installed mysql

if [ $? -ne 0 ]
then 
    echo "MYSQL is not installed, going to install"
    dnf install mysql -y
    VALIDATE $? "installing mysql"
else
    echo "MYSQL is already is installed.  nothing to do"
fi
