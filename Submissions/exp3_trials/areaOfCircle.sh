#!/bin/bash

# EXP ID
# >3.1

# AIM
# >find area of sphere and other parameters

# CODE
read -p "Enter Radius: " radius
pi=3.14
# scale defines the no of decimal places to consider.
# bc used to print float values
area=$(echo "scale=2; $pi * $radius * $radius" | bc)
circumference=$(echo "scale=2; 2 * $pi * $radius" | bc)
volume=$(echo "scale=2; (4/3) * $pi * ($radius * $radius * $radius)" | bc)

echo "Area of the sphere: $area"
echo "Circumference of the sphere: $circumference"
echo "Volume of the sphere: $volume"
