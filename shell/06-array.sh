#!/bin/bash
FRUITS=("APPLE" "BANANA" ""KIWI)
VEGETABLES=("CARROT","BEETROOT","BRINGAL")

echo "First fruit is : $FRUITS[0]"
echo "second fruit is : ${FRUITS[3]}"
echo "vegetable is : ${VEGETABLE[2]}"
echo "fruits all : ${FRUITS[@]}"
echo "vegetables are all : $VEGETABLES[@]"