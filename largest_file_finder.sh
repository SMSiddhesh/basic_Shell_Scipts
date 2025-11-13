#!/bin/bash
# Script Name: Largest File Finder
# Description: Finds and displays the largest file in a given directory

# Ask user for directory name
echo "Enter the directory path:"
read dir

# Check if directory exists
if [ ! -d "$dir" ]; then
    echo "Error: Directory does not exist."
    exit 1
fi

# Find the largest file in the directory (not recursive)
largest_file=$(find "$dir" -type f -exec du -b {} + | sort -nr | head -n 1)

# Check if there are files in the directory
if [ -z "$largest_file" ]; then
    echo "No files found in the directory."
    exit 0
fi

# Extract file name and size
size=$(echo "$largest_file" | awk '{print $1}')
file=$(echo "$largest_file" | awk '{print $2}')

# Display result
echo "Largest file: $file"
echo "Size (bytes): $size"
