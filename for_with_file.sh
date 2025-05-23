#!/bin/bash

# ======================================================
# File Reading with FOR Loop
# ======================================================
<<COMMENT
Demonstrates safe file reading using:
- for loop iteration
- file existence check
- basic error handling
COMMENT

# ======================================================
# Basic For Loop (commented out)
# ======================================================
# read -p "Enter path of file to read: " file
# for items in $(cat "$file")
# do
#     echo "Name is $items"
# done

# ======================================================
# Improved For Loop Version
# ======================================================

read -p "Enter path of the file to read: " file

if [[ -f "$file" ]]; then
    echo -e "\nReading names from: $file\n"
    
    # Safe for loop with proper IFS handling
    IFS=$'\n'  # Set separator to newline only
    for name in $(cat "$file")
    do
        echo "Name is: $name"
    done
    unset IFS  # Reset to default
    
    echo -e "\nDone reading file."
else
    echo -e "\nError: File '$file' not found!"
fi

# ======================================================
# For Loop Best Practices
# ======================================================
<<COMMENT
1. Always check file exists before reading
2. Set IFS for proper word splitting
3. Unset IFS after to avoid side effects
4. Quote variables when needed
5. Prefer while loops for complex cases
6. Keep the loop simple and readable
COMMENT



<<COMMENT
What is IFS?
IFS (Internal Field Separator) is a special variable in Bash that determines how Bash splits words (fields) when:

Reading lines from a file (for, while, read)

Expanding unquoted variables ($var)

Splitting command substitutions ($(command))

By default, IFS is set to whitespace (space, tab, newline), meaning Bash splits input on any of these characters.

Why Set IFS=$'\n' Before a for Loop?
When reading a file line by line in a for loop:

Problem: By default, for items in $(cat file) splits on all whitespace, not just newlines.

If a line contains spaces (e.g., John Doe), the loop treats it as two separate items (John and Doe).

Solution: Setting IFS=$'\n' forces Bash to split only on newlines, keeping full lines intact.

COMMENT