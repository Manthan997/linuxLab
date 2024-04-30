#!/bin/bash

# EXP ID
# > 3.x

# AIM
# > Given sides of Triangle and decide whether the triangle is isosceles, equilateral, scalene, obtuse, acute, and right Write script for the same.

# CODE
read -p "Enter the length of side 1: " side1
read -p "Enter the length of side 2: " side2
read -p "Enter the length of side 3: " side3

if [ "$side1" -eq "$side2" -a "$side2" -eq "$side3" ]; then
    echo "Equilateral Triangle"
elif [ "$side1" -eq "$side2" -o "$side2" -eq "$side3" -o "$side1" -eq "$side3" ]; then
    echo "Isosceles Triangle"
else
    echo "Scalene Triangle"
fi

if [ "$side1" -gt "$side2" ]; then
    temp=$side1
    side1=$side2
    side2=$temp
fi

if [ "$side2" -gt "$side3" ]; then
    temp=$side2
    side2=$side3
    side3=$temp
fi

if [ "$side1" -gt "$side2" ]; then
    temp=$side1
    side1=$side2
    side2=$temp
fi

a=$side1*$side1
b=$side2*$side2
c=$side3*$side3

if [ "$((a+b))" -eq "$((c))" ]; then
    echo "Right-angled Triangle"
elif [ "$((a+b))" -gt "$((c))" ]; then
    echo "Acute-angled Triangle"
else
    echo "Obtuse-angled Triangle"
fi

