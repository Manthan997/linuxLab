#!/bin/bash

# EXP ID
# > 4.7

# AIM
# > print number of files and folders

# CODE

#navigate
cd $PWD
if [ -d "$@" ] 
then
	echo "files found: $(find "$@" -type f | wc -w)"
	echo "folders found: $(find "$@" -type d | wc -w)"
else
	echo "[ERROR] PLEASE TRY AGAIN.	"
	exit 1
fi



	
