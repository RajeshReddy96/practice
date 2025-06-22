#!/bin/bash

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d-%H-%S)
LOG_FILE=$LOGS_FOLDER/$SCRIPT_NAME-$TIMESTAMP.log
mkdir -p $LOGS_FOLDER

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

CHECK_ROOT(){
    if [ $USERID -ne 0 ]
    then 
        echo -e "$R Please run this script with root priviliges $N" | tee -a $LOG_FILE
        exit 1
    fi
}

VALIDATE(){
    if [ $1 -ne 0 ]   # $1 is checked: if it is not 0, the function logs the step as FAILED and exits the script.(status code)
    then 
        echo -e "$2 is ...$R FAILED $N" | tee -a $LOG_FILE 
        exit 1
    else
        echo -e "$2 is... $G SUCCESS $N" | tee -a $LOG_FILE #$2 is displayed in the message to show which step was SUCCESS or FAILED.
    fi
}

USAGE(){
    echo -e "$R USAGE:: $N sudo sh 11-redirectors.sh package 1 package 2.. "
    exit 1
}

echo "Script started at: $(date)" | tee -a $LOG_FILE

CHECK_ROOT

if [ $# -eq 0 ] # if arguments are not provided in command line then this function will ask us to provide , if u provide argumments like mysql,nginx then this condition will skip
then 
    USAGE
fi

for package in $@  # refers to all argumnets passes to it
do 
    dnf list installed $package &>>$LOG_FILE
    if [ $? -ne 0 ]
    then 
        echo "$package is not instaalled, going to install it.." | tee -a $LOG_FILE
        dnf install $package -y &>>$LOG_FILE
        VALIDATE $? "Installing $package"
    else
        echo -e "$package is already $Y installed.. nothing to do $N" | tee -a $LOG_FILE
    fi
done