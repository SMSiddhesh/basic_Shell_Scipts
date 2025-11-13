#!/bin/bash
# Script Name: File Word Counter
# Description: Counts lines, words, and characters in a given file

# Ask user for file name
echo "Enter the file name:"
read file

# Check if file exists
if [ ! -f "$file" ]; then
    echo "Error: File does not exist."
    exit 1
fi

# Use wc command to count lines, words, and characters
lines=$(wc -l < "$file")
words=$(wc -w < "$file")
chars=$(wc -m < "$file")

# Display results
echo "File: $file"
echo "-------------------------"
echo "Total Lines      : $lines"
echo "Total Words      : $words"
echo "Total Characters : $chars"
