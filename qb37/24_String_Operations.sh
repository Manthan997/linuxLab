#!/bin/bash

# Prompt the user for input
read -p "Enter string1: " string1
read -p "Enter string2: " string2

# Check if the given string operand size is non-zero
if [ -n "$string1" ]; then
    echo "The string '$string1' has a non-zero size."
else
    echo "The string is empty."
fi

# Check if the given string operand size is zero
if [ -z "$string2" ]; then
    echo "The string is empty."
else
    echo "The string '$string2' has a non-zero size."
fi

# Check if the value of two operands are equal
if [ "$string1" = "$string2" ]; then
    echo "The strings '$string1' and '$string2' are equal."
else
    echo "The strings '$string1' and '$string2' are not equal."
fi

# Check if the value of two operands are not equal
if [ "$string1" != "$string2" ]; then
    echo "The strings '$string1' and '$string2' are not equal."
else
    echo "The strings '$string1' and '$string2' are equal."
fi

# Check if str is not the empty string; if it is empty
if [ -n "$string1" ]; then
    echo "The string '$string1' is not empty."
else
    echo "The string is empty."
fi

if [ -n "$string2" ]; then
    echo "The string '$string2' is not empty."
else
    echo "The string is empty."
fi
