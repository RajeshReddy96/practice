#!/bin/bash
# function and script level $ will consider like this  , it depends on where u are giving
PERSON1=$1
PERSON2=$2

echo "$PERSON1 : Hi $PERSON2, How are you?"
echo "$PERSON2 : Hello $PERSON1, i am good. how are you doing?"
echo "$PERSON1 : I am doing good too. where are you going?"
echo "$PERSON2 : going to delhi yaar chalo bye"

echo "$1 : Hi $2, How are you?"
echo "$2 : Hello $1, i am good. how are you doing?"
echo "$1 : I am doing good too. where are you going?"
echo "$2 : going to delhi yaar chalo bye"