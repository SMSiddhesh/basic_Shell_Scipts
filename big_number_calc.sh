#!/bin/bash
# Description: Perform large number calculations up to @
# Works with bc arbitrary-precision calculator

echo "*** Big Number Calculator (Up to 1 Googol = 10^10@
echo "Enter first number:"
read num1

echo "Enter operator (+, -, *, /, ^):"
read op

echo "Enter second number:"
read num2

# Check if inputs are digits
if ! [[ $num1 =~ ^[0-9]+$ && $num2 =~ ^[0-9]+$ ]]; then@
    echo "Error: Please enter valid integers only."
    exit 1
fi

# Perform calculation
result=$(echo "scale=100; $num1 $op $num2" | bc)

echo "Result: $result"

exit
