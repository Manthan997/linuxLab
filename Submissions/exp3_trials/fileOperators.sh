#!/bin/bash

# EXP ID
# > 3.3

# AIM
# > Write code to demonstrate File Operators, Read file and directory name from user

# CODE
read -p "Enter a file or directory name: " file_or_directory

if [ -e "$file_or_directory" ]; then
    echo "File or directory '$file_or_directory' exists."

    if [ -f "$file_or_directory" ]; then
        echo "'$file_or_directory' is a regular file."

        if [ -s "$file_or_directory" ]; then
            echo "'$file_or_directory' is not empty."
        else
            echo "'$file_or_directory' is empty."
        fi

        if [ -x "$file_or_directory" ]; then
            echo "You have execute permission on '$file_or_directory'."
        else
            echo "You do not have execute permission on '$file_or_directory'."
        fi
    fi

    if [ -d "$file_or_directory" ]; then
        echo "'$file_or_directory' is a directory."

        if [ -x "$file_or_directory" ]; then
            echo "You have execute permission on '$file_or_directory'."
        else
            echo "You do not have execute permission on '$file_or_directory'."
        fi
    fi

    if [ -r "$file_or_directory" ]; then
        echo "You have read permission on '$file_or_directory'."
    else
        echo "You do not have read permission on '$file_or_directory'."
    fi

    if [ -w "$file_or_directory" ]; then
        echo "You have write permission on '$file_or_directory'."
    else
        echo "You do not have write permission on '$file_or_directory'."
    fi
else
    echo "File or directory '$file_or_directory' does not exist."
fi
