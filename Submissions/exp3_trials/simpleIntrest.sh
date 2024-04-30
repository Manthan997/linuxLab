#!/bin/bash

# EXP ID
# > 3.2

# AIM
# > script to find simple intrest

# CODE
read -p "Enter Principal Amount: " principal
read -p "Enter Rate: " rate
read -p "Enter Time Period: " duration

simple_interest=$(echo "scale=2; ($principal * $rate * $duration)/100" | bc)

echo "Simple Interest for given data is : $simple_interest"
