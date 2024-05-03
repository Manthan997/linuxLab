#!/bin/bash

# EXP ID
# > 14a and 31.ii

# AIM
# > to show positional arguments using flags

# CODE
echo "Displaying Flags"
while getopts "1:2:3:" flag; do
  case "${flag}" in
    1) argument1=${OPTARG} ;;
    2) argument2=${OPTARG} ;;
    3) argument3=${OPTARG} ;;
    *) echo "Unknown flag: ${flag}" ;;
  esac
done

echo "First: $argument1"
echo "Second: $argument2"
echo "Third: $argument3"
