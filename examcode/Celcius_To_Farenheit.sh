#!/bin/bash

# Function to convert Celsius to Fahrenheit
celsius_to_fahrenheit() {
    celsius=$1
    fahrenheit=$(echo "scale=2; (($celsius * 9/5) + 32)" | bc)
    echo "$celsius°C = $fahrenheit°F"
}

# Function to convert Fahrenheit to Celsius
fahrenheit_to_celsius() {
    fahrenheit=$1
    celsius=$(echo "scale=2; (($fahrenheit - 32) * 5/9)" | bc)
    echo "$fahrenheit°F = $celsius°C"
}

# Main menu
while true; do
    echo "Select an option:"
    echo "1. Convert Celsius to Fahrenheit"
    echo "2. Convert Fahrenheit to Celsius"
    echo "3. Exit"
    read -p "Enter your choice (1-3): " choice

    case $choice in
        1)
            read -p "Enter temperature in Celsius: " temp_celsius
            celsius_to_fahrenheit $temp_celsius
            ;;
        2)
            read -p "Enter temperature in Fahrenheit: " temp_fahrenheit
            fahrenheit_to_celsius $temp_fahrenheit
            ;;
        3)
            echo "Exiting..."
            echo "Please Select The Right Choice "
	    break
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac
    echo ""
done
