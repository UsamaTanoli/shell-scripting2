#!/bin/bash

#Definition of readonly Variables in Shell Scripting
<<COMMENT

A readonly variable (constant) is a variable whose value cannot be changed after it is set.

Once defined, trying to modify it will cause an error.

Useful for storing fixed values (like configurations, paths, or constants).

COMMENT


# 1. Defining a readonly (constant) variable
readonly FLAGSHIPGPU="RTX5090"  
# 'FLAGSHIPGPU' is now a constant storing "RTX5090" (cannot be changed later)

# 2. Printing the readonly variable
echo "Flagship gaming GPU is: $FLAGSHIPGPU"  
# Correct: Prints → "Flagship gaming GPU is: RTX5090"

# 3. Trying to change the readonly variable (will cause an error)
# Uncommenting the next 2 lines will fail:
# FLAGSHIPGPU="RTX5080"  
# echo "Flagship gaming GPU is: $FLAGSHIPGPU"  
# ERROR: "FLAGSHIPGPU: readonly variable"

# 4. Similarly, another example with a readonly variable
readonly BEST_CPU="Ryzen9_9950X"  
echo "Best CPU for gaming is: $BEST_CPU"  

# Trying to change BEST_CPU will also fail:
# BEST_CPU="i9-14900K"  
# ERROR: "BEST_CPU: readonly variable"