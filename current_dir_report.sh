#!/bin/bash
# Script Name: Current Directory Report
# Description: Prints the number of files and subdirectories in the current directory

# Get current directory path
dir=$(pwd)

# Count files (regular files only)
file_count=$(find "$dir" -maxdepth 1 -type f | wc -l)

# Count subdirectories (excluding current directory)
dir_count=$(find "$dir" -maxdepth 1 -type d ! -path "$dir" | wc -l)

# Display results
echo "Current Directory: $dir"
echo "-----------------------------"
echo "Number of files       : $file_count"
echo "Number of subdirectories : $dir_count"
