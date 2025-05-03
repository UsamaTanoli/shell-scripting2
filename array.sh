#!/bin/bash

# ======================================================
# Definition and Usage of Arrays in Shell Scripting
# ======================================================
<<COMMENT
Arrays allow storing multiple values in a single variable.

Types demonstrated:
1. Indexed arrays (default)
2. Associative arrays (key-value pairs)

Key Features:
- Zero-based indexing
- Can store mixed data types (strings, numbers)
- Dynamic sizing
- Flexible slicing operations
COMMENT

# ======================================================
# Indexed Array Examples
# ======================================================

# 1. Creating an indexed array with mixed data types
myArr=( "Abubakar" "Fullstack engineer" 17 "Hight" 5.10 )

# Accessing array elements
echo "First value is ${myArr[0]}"          # Prints first element (index 0)
echo "All values: ${myArr[*]}"             # Prints all elements

# Practical usage with formatted output
echo "Name is ${myArr[0]}, profession is ${myArr[1]}, age is ${myArr[2]}"

# 2. Array length operations
echo "Total length of array is ${#myArr[*]}"  # Prints count of elements

# 3. Array slicing examples
echo "Values from index 1: ${myArr[@]:1}"             # All elements from index 1
echo "Two values from index 1: ${myArr[@]:1:2}"       # Two elements starting at index 1
echo "First three values: ${myArr[@]:0:3}"            # Elements 0, 1, 2

# 4. Modifying arrays (adding elements)
arr2=(1 2 3)
echo "Original arr2: ${arr2[*]}"
arr2+=('new' 4 5)                            # Appending multiple elements
echo "Modified arr2: ${arr2[*]}"

# ======================================================
# Associative Array Examples
# ======================================================

# 1. Creating and using associative arrays (key-value pairs)
declare -A keyArr                            # Required declaration
keyArr=( 
    [name]="John doe" 
    [personality]="hypothetical in programming" 
    [work]="portray in examples" 
)

# Accessing associative array elements
echo "All keyArr values: ${keyArr[*]}"       # Prints all values
echo "Name is ${keyArr[name]}"               # Access by key

# ======================================================
# Best Practices
# ======================================================
<<COMMENT
1. Use indexed arrays for ordered lists
2. Use associative arrays for labeled data
3. Quote array expansions ("${array[@]}")
4. Pre-declare associative arrays with declare -A
5. Use descriptive element ordering in indexed arrays
6. Consider array length when doing slicing
COMMENT