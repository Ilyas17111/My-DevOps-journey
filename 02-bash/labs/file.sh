#!/bin/bash

echo "Please enter the filename: $1"
read fname

if [ -e "$fname" ]; then
    echo "File '$fname' exists."
else
    echo "File '$fname' does not exist."
    exit 1
fi
if [ -r "$fname" ]; then
    echo "File '$fname' is readable."
else
    echo "File '$fname' is not readable."
fi
if [ -w "$fname" ]; then
    echo "File '$fname' is writable."
else
    echo "File '$fname' is not writable."
fi
if [ -x "$fname" ]; then
    echo "File '$fname' is executable."
else
    echo "File '$fname' is not executable."
fi