#!/bin/bash

read -p "Enter a character: " char

# Check if input is a single character
if [ ${#char} -ne 1 ]; then
    echo "Error: Please enter a single character."
    exit 1
fi

case $char in
    [AEIOUaeiou]) 
        echo "$char is a vowel."
        ;;
    [BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz])
        echo "$char is a consonant."
        ;;
    [0-9])
        echo "$char is a digit."
        ;;
    *)
        echo "$char is a special character."
        ;;
esac
