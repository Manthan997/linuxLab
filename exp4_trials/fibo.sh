#!/bin/bash

# EXP ID
# > 4.3.1

# AIM
# > Write shell script to generate Fibo series till the limit entered by user(for and while)

# CODE
read -p "Enter the number of terms for Fibonacci series: " n

if [ $n -lt 1 ]; then
    echo "Please enter a valid positive number."
    exit 1
fi

a=0
b=1
echo "Fibonacci series up to $n terms:"
for ((i = 0; i < n; i++)); do
    echo -n "$a "
    next=$((a + b))
    a=$b
    b=$next
done

echo
