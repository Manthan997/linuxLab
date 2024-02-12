#!/bin/bash

# EXP ID
# > incomplete 7.1

# AIM
# > demo command line args positional and using flags loopsand others

# CODE
echo "Displaying Command line arguments"
echo 
echo "1. Positional parameters:"
echo "Arg1: $1"
echo "Arg2: $2"
echo "Arg3: $3"
echo "DONE!!"
echo 
echo "2. Using Flags"
while getopts ":a:b:c:" FLAG;
do
case "${FLAG}" in
a) website = ${OPTARG};;
b) post = ${OPTARG};;
c) shares = ${OPTARG};;
esac
done
echo "Website name: $website"
echo "Post name: $post"
echo "Shares: $shares"
echo
echo "3. Using loops"
i=1
for cars in "$@"
do
echo "Car no. $i: $cars"
i=$(($i+1))
done
