#!/bin/bash

# Check if the user has provided a file name as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Check if the file exists
if [ ! -f "$1" ]; then
    echo "File $1 not found."
    exit 1
fi

# Use wc command to count characters, words, and lines
char_count=$(wc -m < "$1")
word_count=$(wc -w < "$1")
line_count=$(wc -l < "$1")

# Display the counts
echo "Number of characters: $char_count"
echo "Number of words: $word_count"
echo "Number of lines: $line_count"
