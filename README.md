# Bash Script Bug: Handling Filenames with Spaces

This repository demonstrates a common bug in bash scripts related to handling filenames that contain spaces. The script `bug.sh` attempts to process files in a directory but fails when encountering filenames with spaces. The solution is provided in `bugSolution.sh`.

## Bug Description
The original script uses a simple `for` loop to iterate over files in a directory. This approach does not correctly handle filenames with spaces, leading to unexpected behavior or errors. 

## Solution
The corrected script uses word splitting and globbing to safely handle filenames with spaces and special characters.

## How to reproduce:
1. Create a directory (e.g., `mydir`).
2. Create some files in `mydir`, including at least one with spaces in its name (e.g., `my file.txt`).
3. Run `bug.sh` and `bugSolution.sh` and observe the output.