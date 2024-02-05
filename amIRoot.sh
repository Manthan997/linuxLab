#!/bin/bash

# EXP ID
# > 4.6 

# AIM
# > check if the user is root user

# CODE
if [ "$UID" -eq 0 ]
then
	echo "i am gROOT"
else
	echo "you are not root"
fi

