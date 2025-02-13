#!/bin/bash

# This script correctly processes files in a directory,
# even those with spaces in their filenames.

# Get the directory to process from the user
read -p "Enter the directory to process: " directory

# Use find to iterate through files, handling filenames with spaces correctly
find "$directory" -maxdepth 1 -type f -print0 | while IFS= read -r -d $'\0' file; do
  # Process each file (e.g., print its name)
  echo "Processing file: $file"
  # Check if the file exists and is a regular file
  if [ -f "$file" ]; then
    echo "File $file exists."
  else
    echo "File $file does not exist or is not a regular file."
  fi
done