#!/bin/bash

# ======================================================
# User Input Handling in Shell Scripting
# ======================================================
<<COMMENT
Reading user input allows scripts to interact dynamically with users.

Methods Demonstrated:
1. Basic read command
2. Prompt-integrated read (-p flag)

Key Features:
- Stores input in variables for later use
- Supports prompt messages
- Enables interactive script behavior
COMMENT

# ======================================================
# Basic Input Methods
# ======================================================

# Method 1: Separate prompt and read (commented out)
# echo "Enter your name"  # Display prompt first
# read name              # Then wait for input
# echo "Your name is: $name"

# ======================================================
# Recommended Practice
# ======================================================

# Method 2: Combined prompt and read (-p flag)
read -p "Enter Your name: " name  # -p includes the prompt message
echo "Your name is: $name"

# ======================================================
# Advanced Input Handling
# ======================================================

# 1. Silent input for sensitive data (-s flag)
read -sp "Enter your password: " password
echo -e "\nPassword received (not shown for security)"

# 2. Setting timeout for input (-t flag)
if read -t 5 -p "Enter your age (5 sec timeout): " age; then
    echo "You entered: $age"
else
    echo -e "\nTime out reached, no age provided"
fi

# 3. Input with default value
read -p "Enter your department [default: Information Tech]: " dept
dept=${dept:-Information Tech}  # Use IT if empty
echo "Department: $dept"

#You can also write it in short way
# echo "Department: ${dept:-Information Tech}"


# ======================================================
# Best Practices
# ======================================================
<<COMMENT
1. Always use -p for cleaner prompt integration
2. Use -s for passwords/sensitive data
3. Validate important input
4. Provide timeout (-t) for critical operations
5. Consider default values where appropriate
6. Sanitize input when using in commands
COMMENT