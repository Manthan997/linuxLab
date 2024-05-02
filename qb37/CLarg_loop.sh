#!/bin/bash

# EXP ID
# > 14c and 31.iii

# AIM
# > show arguments using loops 

# CODE
echo "3. Using loops"
i=1
for arg in "$@"
do
echo "Argument no. $i: $arg"
i=$(($i+1))
done
