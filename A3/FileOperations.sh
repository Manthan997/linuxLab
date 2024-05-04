#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <file_path>"
    exit 1
fi

file_path="$1"

# 1. Check if the file is a named pipe
if [ -p "$file_path" ]; then
    echo "$file_path is a named pipe."
else
    echo "$file_path is not a named pipe."
fi

# 2. Check if the file descriptor is open and associated with a terminal
if [ -t "$file_path" ]; then
    echo "$file_path is associated with a terminal."
else
    echo "$file_path is not associated with a terminal."
fi

# 3. Check if the file has its Set User ID (SUID) bit set
if [ -u "$file_path" ]; then
    echo "$file_path has the SUID bit set."
else
    echo "$file_path does not have the SUID bit set."
fi

# 4. Check if the file is readable
if [ -r "$file_path" ]; then
    echo "$file_path is readable."
else
    echo "$file_path is not readable."
fi

# 5. Check if the file is writable
if [ -w "$file_path" ]; then
    echo "$file_path is writable."
else
    echo "$file_path is not writable."
fi

# 6. Check if the file is executable
if [ -x "$file_path" ]; then
    echo "$file_path is executable."
else
    echo "$file_path is not executable."
fi

# 7. Check if the file has size greater than 0
if [ -s "$file_path" ]; then
    echo "$file_path has a size greater than 0."
else
    echo "$file_path has a size of 0."
fi

# 8. Check if the file exists
if [ -e "$file_path" ]; then
    echo "$file_path exists."
else
    echo "$file_path does not exist."
fi
