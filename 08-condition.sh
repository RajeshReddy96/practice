#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 87 ]
then 
    echo "Given number  " $NUMBER is greater than 87"
else
    echo "Given number $NUMBER is less than 87"
fi
