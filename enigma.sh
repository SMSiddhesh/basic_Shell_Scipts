#!/bin/bash

# Simple Enigma-style cipher in Bash

ALPHABET=({A..Z})

# Rotor wiring (simple substitution)
ROTOR=(Q W E R T Y U I O P A S D F G H J K L Z X C V B N M)

rotate_rotor() {
    local first=${ROTOR[0]}
    ROTOR=("${ROTOR[@]:1}" "$first")
}

encrypt_char() {
    local ch="$1"
    for i in "${!ALPHABET[@]}"; do
        if [[ "${ALPHABET[$i]}" == "$ch" ]]; then
            echo -n "${ROTOR[$i]}"
            rotate_rotor
            return
        fi
    done
    echo -n "$ch"
}

echo "Enter message (UPPERCASE letters only):"
read MESSAGE

echo -n "Encrypted Text: "
for ((i=0; i<${#MESSAGE}; i++)); do
    encrypt_char "${MESSAGE:$i:1}"
done

echo

