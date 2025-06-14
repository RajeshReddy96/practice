#!/bin/bash
# We can store variables with $ or ${}
PERSON1=Rajesh
PERSON2=Suresh

echo "$PERSON1 : Hi ${PERSON2}, How are you?"
echo "${PERSON2} : Hello $PERSON1, i am good. how are you doing?"
echo "$PERSON1 : I am doing good too. where are you going?"
echo "${PERSON2} : going to delhi yaar chalo bye"

