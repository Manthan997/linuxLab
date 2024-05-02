#!/bin/bash

# Copy content of one file to another
copy_file() {
    echo "Enter the path of the source file:"
    read source_file
    echo "Enter the path of the destination file:"
    read destination_file

    if [ -f "$source_file" ]; then
        cp "$source_file" "$destination_file"
        echo "Content of $source_file copied to $destination_file successfully."
    else
        echo "Source file not found."
    fi
}

# Delete a given file if it exists
delete_file() {
    echo "Enter the path of the file to delete:"
    read file_to_delete

    if [ -f "$file_to_delete" ]; then
        rm "$file_to_delete"
        echo "$file_to_delete deleted successfully."
    else
        echo "File not found."
    fi
}

# Rename a file
rename_file() {
    echo "Enter the path of the file to rename:"
    read old_name
    echo "Enter the new name:"
    read new_name

    if [ -f "$old_name" ]; then
        mv "$old_name" "$new_name"
        echo "$old_name renamed to $new_name successfully."
    else
        echo "File not found."
    fi
}

# Check the permissions of a file
check_permissions() {
    echo "Enter the path of the file to check permissions:"
    read file_to_check_permissions

    if [ -f "$file_to_check_permissions" ]; then
        ls -l "$file_to_check_permissions"
    else
        echo "File not found."
    fi
}

# Main menu
while true; do
    echo "Choose an operation:"
    echo "1. Copy content of one file to another"
    echo "2. Delete a given file"
    echo "3. Rename a file"
    echo "4. Check the permissions of a file"
    echo "5. Exit"

    read choice

    case $choice in
        1) copy_file ;;
        2) delete_file ;;
        3) rename_file ;;
        4) check_permissions ;;
        5) echo "Exiting..."; exit ;;
        *) echo "Invalid choice. Please enter a number from 1 to 5." ;;
    esac
done
