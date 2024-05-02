#!/bin/bash

# EXP ID
# > 9 and 26

# AIM
# > Write shell script to find factorial of number using while Loop

# CODE
read -p "Enter number: " n
ans=1

while [ $n -ge 1 ]; do
    ans=$((ans * n))
    n=$((n - 1))
done

echo "$ans"

