#!/bin/bash

# Check if file path is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <file_path>"
    exit 1
fi

file_path=$1

# 1. Checks if file is a block special file
if [ -b "$file_path" ]; then
    echo "$file_path is a block special file."
fi

# 2. Checks if file is a character special file
if [ -c "$file_path" ]; then
    echo "$file_path is a character special file."
fi

# 3. Checks if file is a directory
if [ -d "$file_path" ]; then
    echo "$file_path is a directory."
fi

# 4. Checks if file is an ordinary file as opposed to a directory or special file
if [ -f "$file_path" ]; then
    echo "$file_path is an ordinary file."
fi

# 5. Checks if file has its set group ID (SGID) bit set
if [ -g "$file_path" ]; then
    echo "$file_path has its set group ID (SGID) bit set."
fi

# 6. Checks if file has its sticky bit set
if [ -k "$file_path" ]; then
    echo "$file_path has its sticky bit set."
fi

# 7. Checks if file is a named pipe
if [ -p "$file_path" ]; then
    echo "$file_path is a named pipe."
fi

# 8. Checks if file descriptor is open and associated with a terminal
if [ -t "$file_path" ]; then
    echo "$file_path is open and associated with a terminal."
fi

# 9. Checks if file has its Set User ID (SUID) bit set
if [ -u "$file_path" ]; then
    echo "$file_path has its Set User ID (SUID) bit set."
fi

# 10. Checks if file is readable
if [ -r "$file_path" ]; then
    echo "$file_path is readable."
fi

# 11. Checks if file is writable
if [ -w "$file_path" ]; then
    echo "$file_path is writable."
fi

# 12. Checks if file is executable
if [ -x "$file_path" ]; then
    echo "$file_path is executable."
fi

# 13. Checks if file has size greater than 0
if [ -s "$file_path" ]; then
    echo "$file_path has size greater than 0."
fi

# 14. Checks if file exists
if [ -e "$file_path" ]; then
    echo "$file_path exists."
fi
