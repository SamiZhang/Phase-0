# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? An array with itegers and string(s)
# What is the output? A new array with integer or string added if meets minimum size
# What are the steps needed to solve the problem? 
# Create a method called pad! and pad
# Change elements within array into string
# Check the size of array
# Set a minimum size for new element to add into array
#IF the array's length is less than the minimum size, pad should return a new array padded with the pad value up to the minimum size.
# End method


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  
  if min_size <= array.length
    p array
  else 
    p array << array + [value] * (min_size - array.length) 
  end
end   



def pad(array, min_size, value = nil) #non-destructive
    new_array = Array.new(array)
 difference = (min_size - array.length)
 difference.times {
   new_array << value}
 return new_array
end


# 3. Refactored Solution



# 4. Reflection