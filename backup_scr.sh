#!/bin/bash
# Script to back up all .txt files from one directory to another

echo "Enter source directory:"
read src

echo "Enter destination directory:"
read dest

# Check if source directory exists
if [ ! -d "$src" ]; then
    echo "❌ Source directory does not exist!"
    exit 1
fi

# Create destination directory if it doesn’t exist
if [ ! -d "$dest" ]; then
    echo "📁 Destination directory not found. Creating..."
    mkdir -p "$dest"
fi

# Copy all .txt files
cp "$src"/*.txt "$dest" 2>/dev/null

# Check if copy was successful
if [ $? -eq 0 ]; then
    echo "✅ Backup complete! All .txt files copied from $src to $dest"
else
    echo "⚠️  No .txt files found or an error occurred."
fi
