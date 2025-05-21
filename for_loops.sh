#!/bin/bash

# ======================================================
# For Loops in Shell Scripting
# ======================================================
<<COMMENT
For loops allow repetitive execution of commands for:
1. Iterating through explicit lists
2. Processing array elements  
3. Numeric ranges
4. C-style loops

Key Features:
- Multiple syntax options
- Works with numbers, strings, arrays
- Supports break/continue
COMMENT

# ======================================================
# Basic List Iteration
# ======================================================

# Method 1: Direct list (commented out)
# for i in 1 2 3 4 5 6
# do
#     echo "Number is $i"
# done

# Method 2: String list (commented out)
# for name in "Usama" "Anas" "Okasha" 
# do
#     echo "Name is $name"
# done

# ======================================================
# Array Iteration  
# ======================================================

# Method 3: Using array (commented out)
# names=("Usama" "Anas" "Okasha")
# for name in ${names[*]}
# do
#     echo "Name is $name" 
# done

# ======================================================
# Numeric Range Loops
# ======================================================

# Method 4: Using seq command (commented out)
# for i in $(seq 1 10)
# do
#     echo "Number is $i"
# done

# Method 5: Brace expansion (active)
for i in {1..10}
do
    echo "Number is $i"
done

# ======================================================
# C-style For Loop
# ======================================================

# Method 6: C-style syntax (commented out) 
# for ((i=1; i<=10; i++))
# do
#     echo "Number is $i"
# done

# ======================================================
# Best Practices
# ======================================================
<<COMMENT
1. Use {start..end} for simple numeric ranges
2. Use arrays for string collections  
3. $(seq) allows step/increment control
4. C-style offers most flexibility
5. Quote variables ("$var") when needed
6. Prefer meaningful variable names
COMMENT