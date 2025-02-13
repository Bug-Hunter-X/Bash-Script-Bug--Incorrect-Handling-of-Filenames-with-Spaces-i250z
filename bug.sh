#!/bin/bash

# This script attempts to process files in a directory,
# but it has a subtle bug related to how it handles spaces in filenames.

# Get the directory to process from the user
read -p "Enter the directory to process: " directory

# Loop through each file in the directory
for file in "$directory"/*; do
  # Process each file (e.g., print its name)
  echo "Processing file: $file"
  # Check if the file exists and is a regular file
  if [ -f "$file" ]; then 
      echo "File $file exists."
  else
      echo "File $file does not exist or is not a regular file."
  fi

done