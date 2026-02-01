#!/bin/bash 

num1=25
num2=67

sum=$((num1+num2))

echo "sum is: $sum"

#array

fruits=("apple" "banana" "grapes" "mango")

echo "fruits are: ${fruits[@]}"
echo "first fruit is: ${fruits[0]}"
echo "second fruit is: ${fruits[1]}"
echo "total number of fruits: ${#fruits[@]}"
echo "total number of characters in first fruit: ${#fruits[2]}"

