#!/bin/bash

# EXP ID
# > 4.6

# AIM
# > Write shell script to generate even number between limit specified by user

# CODE
read -p "Enter the lower bound of the range: " lower
read -p "Enter the upper bound of the range: " upper

for ((num = lower; num <= upper; num++));
 do
    if [ $((num % 2)) -eq 0 ]
       then
        echo -n "$num "
    fi
done

echo
