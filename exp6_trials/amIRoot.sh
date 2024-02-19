#!/bin/bash

# EXP ID
# > 6.b 

# AIM
# > check if the user is root user

# CODE
if [ "$UID" -eq 0 ]
then
	echo "i am gROOT"
else
	echo "you are not root"
fi

