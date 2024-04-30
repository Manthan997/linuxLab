#!/bin/bash

# EXP ID
# > 4.7

# AIM
# > Write shell script to Generate sum of N numbers. Read N from user and until loop

# CODE
read -p "Enter the limit: " n
sum=0
i=1

until [ $i -gt $n ]; do
    sum=$((sum + i))
    ((i++))
done

echo "The sum is $sum"
