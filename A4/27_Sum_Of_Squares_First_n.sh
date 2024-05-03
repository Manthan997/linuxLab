#!/bin/bash

# Read the value of n from the user
read -p "Enter the value of n: " n

# Initialize sum variable to store the sum of squares of first n numbers
sum=0

# Loop to calculate the sum of squares of the first n numbers
for ((i=1; i<=$n; i++))
do
    square=$((i * i))
    sum=$((sum + square))
done

# Display the result
echo "Sum of squares of the first $n numbers is: $sum"
