#!/bin/bash

# EXP ID
# > 8

# AIM
# > Write a shell script that delete all lines containing a specified word

# CODE

echo enter file name
read file
echo enter word
read word
echo file before removing $word:
cat $file
grep -v -i $word $file > test
mv test $file
echo file after removing $word:
cat $file
