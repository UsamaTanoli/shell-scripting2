#!/bin/bash

# ======================================================
# Math Calculations in Shell Scripting
# ======================================================
<<COMMENT
Performing arithmetic operations in bash requires specific syntax.

Methods Demonstrated:
1. Basic variable assignment (incorrect for math)
2. let command for arithmetic
3. $(( )) arithmetic expansion

Key Features:
- Different approaches to arithmetic operations
- Handling integers (bash doesn't natively handle floats)
- Operator precedence awareness
COMMENT

# ======================================================
# Basic Calculation Methods
# ======================================================

# Initialize variables
num1=44
num2=33

# ======================================================
# Common Pitfalls
# ======================================================

# Method 1: Incorrect string concatenation (commented out)
# add=$num1+$num2  # This treats it as string concatenation
# echo "Incorrect addition: $add"

# ======================================================
# Recommended Practices
# ======================================================

# Method 2: Using let command
let add=$num1+$num2
echo "Correct addition using let: $add"

# Method 3: Using arithmetic expansion
sub=$((num1 - num2))
echo "Subtraction using \$(( )): $sub"

# ======================================================
# Advanced Operations
# ======================================================

# 1. Multiplication
let mul=$num1*$num2
echo "Multiplication: $mul"

# 2. Division (integer only)
division=$((num1 / num2))
echo "Integer division: $division"

# 3. Modulo operation
mod=$((num1 % num2))
echo "Modulo: $mod"

# 4. Compound operations
compound=$(( (num1 * num2) + (num1 / num2) ))
echo "Compound operation: $compound"

# ======================================================
# Best Practices
# ======================================================
<<COMMENT
1. Always use proper arithmetic syntax (let or $(( )))
2. Be aware of integer-only division
3. Use parentheses for operation precedence
4. Consider bc command for floating point operations
5. Document complex formulas for readability
6. Validate numeric input before operations
COMMENT