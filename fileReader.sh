#!/bin/bash

# EXP ID
# >

# AIM
# >

# CODE

file="temp.txt"

while read -r line; do
    echo -e "$line\n"
done <$file 
