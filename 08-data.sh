#!/bin/bash

FRUITS=("Apple" "Banana" "Mango")

echo ${#FRUITS[@]}
echo "First value is: ${FRUITS[0]}"

echo "Second value is: ${FRUITS[1]}"

echo "Popular fruits is ${FRUITS[2]}"

echo "All fruits is: ${FRUITS[@]}"