#!/bin/bash
set -x  # Fixed typo

read -p "Enter a number: " Num

# Correct syntax using arithmetic double parentheses (( ))
if (( Num % 3 == 0 && Num % 5 == 0 && Num % 15 != 0 )); then
        echo "The number is divisible by both 3 and 5 (and therefore 15)."
else
        echo "Condition not satisfied."
fi

