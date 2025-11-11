#!/bin/bash
# Script to check if a number is even or odd

echo "Enter a number:"
read n1

# Using modulo operator to check even/odd
if [ $((n1 % 2)) -eq 0 ]; then
    echo "✅ $n1 is even."
else
    echo "🔹 $n1 is odd."
fi
