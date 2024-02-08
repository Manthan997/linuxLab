#!/bin/bash

# EXP ID
# > 3.5

# AIM
# > Menu Driven program to perform different arithmetic operation(Case)

# CODE
while true; do
    echo "Menu:"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Exit"

    read -p "Enter your choice (1-5): " choice

    case $choice in
        1)
            read -p "Enter first number: " num1
            read -p "Enter second number: " num2
            result=$((num1 + num2))
            echo "Result: $result"
            ;;
        2)
            read -p "Enter first number: " num1
            read -p "Enter second number: " num2
            result=$((num1 - num2))
            echo "Result: $result"
            ;;
        3)
            read -p "Enter first number: " num1
            read -p "Enter second number: " num2
            result=$((num1 * num2))
            echo "Result: $result"
            ;;
        4)
            read -p "Enter dividend: " num1
            read -p "Enter divisor: " num2
	    # result=$((num1 / num2))
	    result= printf "%f \n" $((10**3 * $num1/$num2))e-3
	    echo "Result: $result"
            ;;
        5)
            # Exit
            echo "Exit."
            exit 0
            ;;
        *)
            # Invalid choice
            echo "Invalid choice. Please enter a number between 1 and 5."
            ;;
    esac
done
