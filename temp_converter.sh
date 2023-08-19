#!/bin/bash

echo "Temperature Converter"
echo "1. Celsius to Fahrenheit"
echo "2. Fahrenheit to Celsius"
read -p "Enter your choice (1/2): " choice

if [ "$choice" -eq 1 ]; then
    read -p "Enter temperature in Celsius: " celsius
    fahrenheit=$(echo "scale=2; ($celsius * 9/5) + 32" | bc)
    echo "$celsius°C is equal to $fahrenheit°F"
elif [ "$choice" -eq 2 ]; then
    read -p "Enter temperature in Fahrenheit: " fahrenheit
    celsius=$(echo "scale=2; ($fahrenheit - 32) * 5/9" | bc)
    echo "$fahrenheit°F is equal to $celsius°C"
else
    echo "Invalid choice. Please enter 1 or 2."
fi

