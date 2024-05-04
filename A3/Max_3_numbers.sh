#!/bin/bash

echo "Enter the first number: "
read num1

echo "Enter the second number: "
read num2

echo "Enter the third number: "
read num3

# Determine the maximum number
if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then
    max=$num1
elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ]
then
    max=$num2
else
    max=$num3
fi

echo "The maximum of the three numbers is: $max"
