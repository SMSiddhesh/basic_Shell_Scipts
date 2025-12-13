#!/bin/bash

# Morse to alphabet mapping
declare -A MORSE=(
  [".-"]="A"    ["-..."]="B"  ["-.-."]="C"  ["-.."]="D"   ["."]="E"
  ["..-."]="F"  ["--."]="G"   ["...."]="H"  [".."]="I"    [".---"]="J"
  ["-.-"]="K"   [".-.."]="L"  ["--"]="M"    ["-."]="N"    ["---"]="O"
  [".--."]="P"  ["--.-"]="Q"  [".-."]="R"   ["..."]="S"   ["-"]="T"
  ["..-"]="U"   ["...-"]="V"  [".--"]="W"   ["-..-"]="X"  ["-.--"]="Y"
  ["--.."]="Z"
)

echo "Enter Morse code (space between letters, / between words):"
read morse

for code in $morse; do
  if [[ "$code" == "/" ]]; then
    echo -n " "
  else
    echo -n "${MORSE[$code]}"
  fi
done

echo

exit

