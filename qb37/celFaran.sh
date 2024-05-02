#!/bin/bash

# EXP ID
# > 17

# AIM
# > Write shell script to display menu for Celsius to Fahrenheit and Fahrenheit to Celsius, Read the temperature accordingly and convert.

# CODE
while true; do
    echo "Menu:"
    echo "1. Convert Celsius to Fahrenheit"
    echo "2. Convert Fahrenheit to Celsius"
    echo "3. Exit"

    read -p "Enter your choice (1/2/3): " choice
    case $choice in
        1)
            read -p "Enter temperature in Celsius: " celsius
            fahrenheit=$(echo "scale=2; $celsius * 9/5 + 32" | bc)
            echo "$celsius degrees Celsius is equal to $fahrenheit degrees Fahrenheit."
            ;;
        2)
            read -p "Enter temperature in Fahrenheit: " fahrenheit
            celsius=$(echo "scale=2; ($fahrenheit - 32) * 5/9" | bc)
            echo "$fahrenheit degrees Fahrenheit is equal to $celsius degrees Celsius."
            ;;
        3)
            echo "Exit"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter 1, 2, or 3."
            ;;
    esac
done
