#!/bin/bash

# Count the number of files in the current directory
file_count=$(ls -l | grep "^-" | wc -l)

# Print the count
echo "There are $file_count files in the current directory."