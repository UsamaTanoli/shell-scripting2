#!/bin/bash

# ======================================================
# String Operations in Shell Scripting
# ======================================================
<<COMMENT
String manipulation is fundamental in bash scripting.

Key Operations Covered:
1. Length calculation
2. Case conversion (upper/lower)
3. Substring replacement
4. String slicing

Features:
- No external commands needed (pure bash)
- Efficient in-place operations
- Supports variable expansion features
COMMENT

# ======================================================
# Basic String Operations
# ======================================================

# 1. String Length Calculation
myString="Hello How are you"
echo "Original string: '$myString'"
echo "Length of myString is: ${#myString}"  # ${#var} gives string length

# Storing length in another variable
newString=${#myString}
echo "Stored length value: $newString"

# ======================================================
# Case Conversion Operations
# ======================================================

name="Abubakar Aijaz"
echo -e "\nOriginal name: '$name'"

# Convert to uppercase (^^ operator)
echo "name in upper case is: ---${name^^}"

# Convert to lowercase (,, operator)
echo "name in lower case is: ---${name,,}"

# ======================================================
# String Replacement
# ======================================================

phrase="Name of person is: Abubakar"
echo -e "\nOriginal phrase: '$phrase'"

# Replace first occurrence (// replaces all occurrences)
replace_word=${phrase/Abubakar/Okasha}
echo "After replacement: '$replace_word'"

# ======================================================
# String Slicing
# ======================================================

var="Phrase is fourty words long"
echo -e "\nOriginal string: '$var'"

# Slice syntax: ${var:start:length}
sliced_var=${var:10:6}  # Extract 6 chars starting from index 10
echo "Sliced portion: '$sliced_var'"

# ======================================================
# Advanced Examples
# ======================================================

# 1. Multiple replacements
msg="Hello World World"
echo -e "\nOriginal: '$msg'"
echo "Replaced: '${msg//World/Everyone}'"  # Global replacement

# 2. Prefix/Suffix removal
path="/home/user/docs/file.txt"
echo -e "\nPath: '$path'"
echo "Filename: '${path##*/}'"    # Remove longest prefix match
echo "Extension: '${path##*.}'"   # Get file extension

# ======================================================
# Best Practices
# ======================================================
<<COMMENT
1. Always quote string variables ("$var")
2. Use parameter expansion over external commands
3. For complex operations, consider awk/sed
4. Test edge cases (empty strings, special chars)
5. Use descriptive variable names for string operations
COMMENT