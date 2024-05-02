#!/bin/bash

# Read the value of n from the user
read -p "Enter the value of n: " n

# Initialize sum variable to store the sum of squares
sum=0

# Loop to read n numbers and calculate sum of squares
for ((i=1; i<=$n; i++))
do
    read -p "Enter number $i: " num
    square=$((num * num))
    sum=$((sum + square))
done

# Display the result
echo "Sum of squares of $n numbers is: $sum"
