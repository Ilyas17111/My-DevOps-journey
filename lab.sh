#!/bin/bash

prompt1=$1
prompt2=$2

echo "Please enter the first number: $1"
read prompt1

echo "Please enter the second number: $2"
read prompt2

add=$((prompt1 + prompt2))
subtract=$((prompt1 - prompt2))
mutiply=$((prompt1 * prompt2))
divide=$((prompt1 / prompt2))

echo "First number: $prompt1"
echo "Second number: $prompt2"
echo "Results:"
echo " $prompt1 + $prompt2 = $add"
echo " $prompt1 - $prompt2 = $subtract"
echo " $prompt1 * $prompt2 = $mutiply"

if [ $prompt2 -eq 0 ]; then
    echo "Division by zero is not allowed."
else    
    echo " $prompt1 / $prompt2 = $divide"
fi
