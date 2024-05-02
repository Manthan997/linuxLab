#!/bin/bash

# EXP ID
# > 7

# AIM
# > Swap two numbers without using 3rd variable

# CODE
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

echo "Before swapping: num1=$num1, num2=$num2"

num1=$((num1 + num2))
num2=$((num1 - num2))
num1=$((num1 - num2))

echo "After swapping: num1=$num1, num2=$num2"
