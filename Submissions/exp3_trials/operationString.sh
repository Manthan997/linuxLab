#!/bin/bash

# EXP ID
# >

# AIM
# > Write script to perform following String Operation
#Find Length of String
#Find and Replace String
#To Concatenate String
#reverse the string

# CODE
read -p "Enter string for length: " input_string
i=${#input_string}
echo "Length: $i"

read -p "Enter a string: " input_string
read -p "Enter string to find: " input2_string
read -p "Enter to replace: " input3_string
op_string="${input_string//$input2_string/$input3_string}"
echo $op_string

read -p "Enter String1: " input_string
read -p "Enter String2: " input1_string
op_string="$input_string$input1_string"
echo "Concatenated String: $op_string"

read -p "Enter string to reverse: " input_string
op_string=$(echo "$input_string" | rev)
echo "The reversed string is: $op_string"
