#!/bin/bash

# EXP ID
# > 3.x

# AIM
# > Write script to Find whether entered number is even or odd

# CODE
read -p "Enter a number: " number

if [ "$((number % 2))" -eq 0 ]; then
    echo "Even"
else
    echo "Odd"
fi
