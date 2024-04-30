#!/bin/bash

# EXP ID
# > 4.8

# AIM
# > Write shell script to display 4x4 matrix and read data from user from keyboard. Use for Loop

# CODE
echo "Enter elements for a 4x4 matrix:"

for ((row=0; row<4; row++)); do
    for ((col=0; col<4; col++)); do
        echo "Enter element for [$((row+1))][$((col+1))]: "
        read matrix["$row,$col"]
    done
done

# Display the entered matrix
echo -e "\nEntered Matrix:"
for ((row=0; row<4; row++)); do
    for ((col=0; col<4; col++)); do
        echo -n "${matrix[$row,$col]} "
    done
    echo
done
