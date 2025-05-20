#!/bin/bash

# ======================================================
# Menu-Driven Scripts with Case Statements
# ======================================================
<<COMMENT
Creating interactive menus is a common shell scripting task.

Methods Demonstrated:
1. Basic echo for menu display
2. Case statement for option handling
3. Command substitution in output

Key Features:
- Clean menu presentation
- Multiple command execution
- Error handling for invalid inputs
- Practical system information examples
COMMENT

# ======================================================
# Initial Approach (commented out)
# ======================================================
# echo "Provide an option....!"
# echo "a) For listing files"
# echo "b) For print Date"
# echo "c) For check current directory"
# echo -e "d) For display disk space usage\n"
# 
# read choice
# case $choice in
#         a)ls;;
#         b)date;;
#         c)pwd;;
#         d)df -h;;
#         *)echo "Enter correct value"
# esac

# ======================================================
# Current Implementation (Enhanced)
# ======================================================

# Display menu with clear formatting
echo -e "\nGive an option...!\n"
echo "a) Name of user"
echo "b) Check Disk"
echo "c) Check IP"
echo -e "x) Exit\n"

# Read user input
read -p "Enter your choice (a/b/c/x): " options

# ======================================================
# Case Statement Handling
# ======================================================

case $options in
        a|A)
                # User information section
                echo -e "\nYour user name is:"
                whoami
                echo "Have a happy day $(whoami)"  # Command substitution
                ;;
                
        b|B)
                # Disk information section
                echo -e "\nDisk Information:"
                lsblk
                ;;
                
        c|C)
                # Network information section
                echo -e "\nNetwork Information:"
                ip a
                ;;
                
        x|X)
                # Exit option
                echo -e "\nExiting program..."
                exit 0
                ;;
                
        *)
                # Invalid option handler
                echo -e "\nError: Please enter a valid option (a/b/c/x)"
                ;;
esac

# ======================================================
# Advanced Enhancements
# ======================================================

# 1. Added exit option (x)
# 2. Case-insensitive matching (a|A)
# 3. Improved output formatting with echo -e
# 4. Clear section headers in output
# 5. More descriptive option labels

# ======================================================
# Best Practices
# ======================================================
<<COMMENT
1. Always include an exit option in menus
2. Make options case-insensitive when possible
3. Use clear section headers for command output
4. Add blank lines for better readability
5. Include error handling for invalid inputs
6. Use command substitution for dynamic output
7. Keep menu items short and descriptive
8. Consider adding a help option
COMMENT