#!/bin/bash

# EXP ID
# > 5.c

# AIM
# > print number of files and folders

# CODE

#navigate
cd $PWD
if [ -d "$@" ] 
then
	echo "files found: $(find "$@" -type f | wc -w)"
	echo "folders found: $(find "$@" -mindepth 1 -type d | wc -w)"
	# mindepth to avoid the . directory
else
	echo "[ERROR] PLEASE TRY AGAIN.	"
	exit 1
fi



	
