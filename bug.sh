#!/bin/bash

# This script attempts to read a file and print its contents.

file_to_read="my_file.txt"

# The following line is the source of the bug. If my_file.txt is empty,
# it will throw an error.  
while IFS= read -r line; do
  echo "$line"
done < "$file_to_read"

# The script should handle the case where the file is empty gracefully.
