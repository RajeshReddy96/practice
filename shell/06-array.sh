#!/bin/bash
FRUITS=("APPLE" "BANANA" ""KIWI)
VEGETABLES=("CARROT","BEETROOT","BRINGAL")

echo "First fruit is : ${FRUITS[0]}"
echo "second fruit is : ${FRUITS[2]}"
echo "vegetable is : ${VEGETABLES[2]}"
echo "fruits all : ${FRUITS[@]}"
echo "vegetables are all : $VEGETABLES[@]"