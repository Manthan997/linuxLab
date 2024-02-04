#!/bin/bash

# EXP ID
# > exp4 4.2

# AIM
# >Write a shell script to add user and password on Linux system

# CODE
# Am i Root user?
if [ $(id -u) -eq 0 ]; then
	read -p "Enter username : " username
	read -s -p "Enter password : " password
	egrep "^$username" /etc/passwd >/dev/null
	if [ $? -eq 0 ]; then 
    # In a shell script, $? is a special variable that holds the exit status of the last command that was executed.
		echo "$username exists!"
		exit 1
	else
		pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
		useradd -m -p "$pass" "$username"
		[ $? -eq 0 ] && echo "User has been added to system!" || echo "Failed to add a user!"
	fi
else
	echo "Only root may add a user to the system."
	exit 2
fi

# do something for password change feature

# The command egrep "^$username" /etc/passwd >/dev/null is used to check if a user exists in a Unix-like system. Here's a breakdown of what it does:
# egrep is a command-line utility for searching files for lines that match a pattern and then printing the results. It's similar to grep, but supports extended regular expressions.
# "^$username" is the pattern that egrep is searching for. The ^ symbol means the start of a line. So, egrep is looking for any line in the file that starts with the value of the variable username.
# /etc/passwd is the file that egrep is searching. This file contains user account information.
# >/dev/null redirects the output of the egrep command to /dev/null, which is a special file that discards all data written to it (it's often used to suppress output). So, this command isn't interested in the actual lines that match the pattern, it just wants to know if any such lines exist.
# If the egrep command finds a match, it will return a status of 0 (which means success in Unix-like systems). If it doesn't find a match, it will return a non-zero status. This can be used in a script to take different actions depending on whether or not a user exists.