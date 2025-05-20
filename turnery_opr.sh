#!/bin/bash

# ======================================================
# Ternary Operator Cheatsheet
# ======================================================
# Compact if-then-else using && and ||

# Example 1: Age check
read -p "Enter your age: " age
[[ $age -ge 18 ]] && echo "Adult" || echo "Minor"
echo "................................................................................."


# Example 2: File check
read -rp "give file path eg: /etc/passwd : " file_path
# -r: This is the crucial part. It prevents backslash escapes from being interpreted and also helps in handling pasted input by not immediately processing a trailing newline.
[ -f "$file_path" ] && echo "File exists" || echo "Missing file"
#  It's good practice to double-quote $file_path in case the file path contains spaces or other special characters.
echo "................................................................................."

# Example 3: Number test
read -p "Enter a number: " num
(( num % 2 == 0 )) && echo "Even" || echo "Odd"
echo "................................................................................."


# 4. Empty String Check
read -p "Enter your name: " name
[[ -z "$name" ]] && echo "You didn't enter anything!" || echo "Hello, $name!"
# The -z operator checks if a string is empty.

# ======================================================
# Final Recommendations
# ======================================================
# ✓ Use for simple true/false conditions only
# ✓ Keep to single actions per branch
# ✓ For complex logic, use full if-else statements
# ✓ Test edge cases - ternary can have unexpected behaviors
# ✓ Always quote variables in [ ] tests
#
# Remember: Readability beats cleverness!