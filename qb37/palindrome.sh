#!/bin/bash

# EXP ID
# > 30

# AIM
# > Write to check whether entered string is palindrome or not

# CODE
read -p "Enter a string: " str
s="$str"

if [ "$(echo "$s" | rev)" == "$str" ]
then
    echo "The string is a palindrome."
else
    echo "The string is not a palindrome."
fi
