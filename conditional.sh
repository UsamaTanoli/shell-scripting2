#!/bin/bash

# ======================================================
# Conditional Statements in Shell Scripting
# ======================================================
<<COMMENT
Making decisions in scripts based on conditions is fundamental to programming.

Methods Demonstrated:
1. Basic if-else statements
2. Multiple if conditions
3. elif ladder structure

Key Features:
- Numeric comparisons
- Logical operators (&&)
- Clean conditional syntax
- Grade classification example
COMMENT

# ======================================================
# Basic Conditional Structure
# ======================================================

# Get user input
read -p "Enter your marks: " marks

# ======================================================
# Initial Approach (commented out)
# ======================================================
# if [[ marks -ge 80 ]]
# then
#     echo "You are passed"
# else
#     echo "You are failed"
# fi

# ======================================================
# Multiple Independent Conditions (commented out)
# ======================================================
# if [[ $marks -ge 80 ]]
# then
#     echo "You got A+ grade"
# fi

# if [[ $marks -ge 70 && $marks -lt 80 ]]
# then
#     echo "You got A grade"
# fi

# if [[ $marks -ge 60 && $marks -lt 70 ]]
# then
#     echo "You got B grade"
# fi

# if [[ $marks -lt 60 ]]
# then
#     echo "You are failed"
# fi

# ======================================================
# Recommended Practice: elif Ladder
# ======================================================

# if [[ $marks -ge 80 ]]; then
#     echo "You got A+ grade"
# elif [[ $marks -ge 70 ]]; then
#     echo "You got A grade"
# elif [[ $marks -ge 60 ]]; then
#     echo "You got B grade"
# else
#     echo "You are failed"
# fi

# ======================================================
# Advanced Conditional Techniques
# ======================================================

# 1. Boundary checking (alternative approach)
if (( marks > 100 || marks < 0 )); then
    echo "Error: Invalid marks entered (0-100 only)"
elif (( marks >= 80 )); then
    echo "Excellent: A+"
elif (( marks >= 70 )); then
    echo "Very Good: A"
elif (( marks >= 60 )); then
    echo "Good: B"
elif (( marks >= 50 )); then
    echo "Passed: C"
else
    echo "Failed: Try harder next time"
fi


# ======================================================
# Best Practices
# ======================================================
<<COMMENT
1. Prefer elif ladder over multiple ifs for mutually exclusive conditions
2. Use (( )) for arithmetic comparisons
3. Always validate input ranges
4. Keep conditions simple and readable
5. Comment complex logical conditions
6. Use proper indentation for nested conditions
COMMENT