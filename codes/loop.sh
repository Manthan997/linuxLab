#!/bin/bash

# EXP ID
# > 7.3

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
