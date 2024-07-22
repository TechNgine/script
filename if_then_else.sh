#!/bin/bash

echo "Simple If-Then-Else Example"
echo "==========================="

# Prompt the user to enter a number
read -p "Enter a number: " number

# Simple if-then-else to check if the number is even or odd
if (( number % 2 == 0 )); then
    echo "The number $number is even."
else
    echo "The number $number is odd."
fi

echo "If-then-else statement completed!"
