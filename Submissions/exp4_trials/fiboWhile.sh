#!/bin/bash

# EXP ID
# > 4.3.2

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
i=0

echo "Fibonacci series up to $n terms:"
while ((i < n)); do
    echo -n "$a "
    next=$((a + b))
    a=$b
    b=$next
    i=$i+1
done
