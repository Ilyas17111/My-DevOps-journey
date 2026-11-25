#!/bin/bash

echo "Please enter source directory: $1"
read source_dir
if [ ! -d "$source_dir" ]; then
    echo "Source directory '$source_dir' does not exist."
    exit 1
elif [ -d "$source_dir" ]; then
    mkdir backup_$(date +%Y-%m-%d_%H-%M)
    echo "Backup directory created: 'backup_$(date +%Y-%m-%d_%H-%M)'"
    cp -f My-DevOps-journey/$source_dir/*.txt backup_$(date +%Y-%m-%d_%H-%M)
    echo "Backup completed successfully."
    echo "Number of files backed up: $(ls *.txt backup_$(date +%Y-%m-%d_%H-%M) | wc -l)"

fi