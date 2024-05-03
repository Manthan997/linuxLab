#!/bin/bash

# EXP ID
# > 35

# AIM
# > Write shell script to generate prime number between limit specified by user using for loop


# CODE
read -p "Enter the lower bound of the range: " lower
read -p "Enter the upper bound of the range: " upper

for ((num = lower; num <= upper; num++)); do

    is_prime=true
    for ((i = 2; i*i <= num; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            is_prime=false
            break
        fi
    done

    if [ "$is_prime" = true ]; then
        echo -n "$num "
    fi
done

echo
