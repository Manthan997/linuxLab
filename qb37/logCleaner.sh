#!/bin/bash

# EXP ID
# > 5.a

# AIM
# > to clean the log files

# CODE
Log_dir=/var/log
cd $Log_dir

cat /dev/null > messages
# notifications?

cat /dev/null > wtmp
# login details

echo "he he he! your sins have been erased!!"
