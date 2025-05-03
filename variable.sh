#!/bin/bash

#Definition of Variables in Shell Scripting
<<'comments'
A variable is a named storage location that holds data (like text, numbers, or command outputs). In shell scripting:

Variables store values that can be reused.

No need to declare data types (everything is treated as text by default).

Variable names are case-sensitive (name and NAME are different).

To use a variable, prefix it with $ (e.g., $name).

comments


# 1. Storing a simple string in a variable
name="Okasha"  # 'name' is a variable storing the value "Okasha"

# 2. Storing another string in a different variable
profession="Fullstack agentic Ai engineer"  # 'profession' stores job title

# 3. Printing variables inside a sentence
echo "Name is: $name and Profession is $profession"  
# The '$' fetches the stored values

# 4. Storing the output of a command in a variable
HOSTNAME=$(hostname)  
# 'hostname' is a command that returns the computer's name
# $(...) executes the command and stores its output in 'HOSTNAME'

# 5. Printing the stored command output
echo "Name of my machine is '$HOSTNAME'"  
# Shows the machine name inside single quotes