#!/bin/bash

dirname=$1
 echo "Please enter the directory name: $1"
    read dirname

if [ -n "$dirname" ]; then
   
    mkdir "$dirname"
    echo "Directory '$dirname' created successfully."

    cd "/home/legendilz121/My-DevOps-journey/$dirname"

    echo "Please enter the name of the file to create in the directory: $dirname"
    read filename

    touch "$filename.txt"
    echo "File '$filename' created successfully in directory '$dirname'."
    
    echo "Please enter text to write to the file: $filename"
    read text
    
    echo "$text" > "$filename.txt"
    echo "Text written to file '$filename' successfully."

    echo "Contents of the file '$filename':"
    cat "$filename.txt"

else
    echo "Please provide a directory name as an argument."
fi

