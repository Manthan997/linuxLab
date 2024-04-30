#!/bin/bash

# EXP ID
# > 4.5

# AIM
# > Write shell script to generate table of the number specified by the user using for in Loop

# CODE
read -p "Enter the number:" n
for((i=1;i<=10;i++))
do
 result=$((n*i))
 echo $result
done
