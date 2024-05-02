#!/bin/bash

# EXP ID
# > 34

# AIM
# > Write shell script to find reverse of 5 digit number using while loop

# CODE
read -p "Enter a 5-digit number: " number

if [ ${#number} -ne 5 ]; then
    echo "Please enter a valid 5-digit number."
    exit 1
fi

rev=0

while [ $number -gt 0 ]; do
    digit=$((number % 10))
    rev=$((rev * 10 + digit))
    number=$((number / 10))
done

echo "Reversed Number = $rev"
