#!/bin/bash

# ======================================================
# Logical Operators in Shell Scripting
# ======================================================
<<COMMENT
Using logical operators to create complex conditions in bash scripts.

Methods Demonstrated:
1. AND operator (&&) for multiple required conditions
2. OR operator (||) for alternative conditions
3. String comparison with case conversion
4. Secure login simulation

Key Features:
- Combined condition checks
- User input validation
- Case conversion for consistent comparison
- Simulated authentication flow
COMMENT

# ======================================================
# OR Operator Implementation (Login ID or Email)
# ======================================================

echo -e "\nWelcome to the Secure Portal\n"

# Get user credentials
read -p "Enter your login ID (username or email): " input

# Normalize input (optional, based on use case)
input=$(echo "$input" | tr '[:upper:]' '[:lower:]')

# Configuration (hardcoded for demo; in real cases, use secure storage)
correct_username="john_doe"
correct_email="john@example.com"
correct_password="secure123"
max_attempts=3

# ======================================================
# Authentication Logic with AND + OR Operators
# ======================================================

# read -sp "Enter your password: " password
# echo  # For newline after silent input

# if [[ ("$input" == "$correct_username" || "$input" == "$correct_email") ]] && 
#    [[ "$password" == "$correct_password" ]]; then
#     echo -e "\nTwo-factor authentication successful!"
#     echo "Welcome, $correct_username!"
# else
#     echo -e "\nAuthentication failed"
#     echo "Please check your credentials and try again."
# fi

# ======================================================
# Future Enhancement: Attempt counter (commented)
# ======================================================
# attempt=1
# while [ $attempt -le $max_attempts ]; do
#     read -p "Attempt $attempt/$max_attempts - Enter ID: " input
#     read -sp "Enter password: " password
#     echo
#     if [[ ("$input" == "$correct_username" || "$input" == "$correct_email") ]] && 
#        [[ "$password" == "$correct_password" ]]; then
#         echo "Login successful!"
#         break
#     fi
#     echo "Invalid credentials. Try again."
#     attempt=$((attempt + 1))
# done

# ======================================================
# Best Practices
# ======================================================
<<COMMENT
1. Always normalize user input before comparison
2. Use logical operators to simplify complex conditions
3. Store sensitive data securely (not hardcoded)
4. Implement proper error messages
5. Consider adding attempt limits for security
6. Use clear variable names for conditions
7. Add comments explaining security decisions
8. Consider case sensitivity in your comparisons
9. For production, use proper password hashing
10. Implement logging for security events
COMMENT
