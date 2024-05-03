#!/bin/bash

# Get the user's name
echo "Please enter your name:"
read name

# Get the current date and time
current_date=$(date +"%Y-%m-%d")
current_time=$(date +"%T")

# Get the operating system information
os_info=$(uname -s)
os_version=$(uname -r)

# Display the greeting message
echo -e "\nHello, $name! Welcome to the world of Bash scripting."
echo "Today is $current_date, and the current time is $current_time."
echo "You are running on a $os_info operating system, version $os_version."

