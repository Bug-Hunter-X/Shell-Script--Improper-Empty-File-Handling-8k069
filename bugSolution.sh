#!/bin/bash

# This script reads a file and prints its contents. It handles empty files gracefully.

file_to_read="my_file.txt"

if [ -s "$file_to_read" ]; then
  while IFS= read -r line; do
    echo "$line"
done < "$file_to_read"
else
  echo "File is empty or does not exist."
fi

# The corrected script checks if the file exists and is not empty using -s. 
# If the file is empty or doesn't exist, it prints a message instead of throwing an error.