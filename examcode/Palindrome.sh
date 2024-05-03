#!/bin/bash

echo "Enter a string: "
read string

# Remove any non-alphanumeric characters and convert to lowercase
string=$(echo "$string" | tr -d '[:space:]' | tr '[:upper:]' '[:lower:]')

# Reverse the string
reversed=$(rev <<< "$string")

# Check if the original string is equal to the reversed string
if [ "$string" == "$reversed" ]
then
    echo "The string '$string' is a palindrome."
else
    echo "The string '$string' is not a palindrome."
fi


# Beautiful Palindromes :

# 1)Never odd or even
# 2)Borrow Or Rob
# 3)Mom
# 4)Dad
