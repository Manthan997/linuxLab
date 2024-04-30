#!/bin/bash

# EXP ID
# > 6.d

# AIM
# > write a script to make directores

# CODE
echo -n "Enter directory name ->"
read dir
if [ -d "$dir" ]
then
echo "Directory exists"
else
`mkdir $dir`
echo "Directory created"
fi
