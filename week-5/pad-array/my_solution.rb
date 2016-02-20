# Pad an Array

# I worked on this challenge with: Andrew Crowley

# I spent [2] hours on this challenge.


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
  difference.times {new_array << value}
  return new_array
end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  array.fill(value, array.length...min_size)
end 

def pad(array, min_size, value = nil) #non-destructive
 array.clone.fill(value, array.length...min_size)
end


# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?
Yes! We break down every little steps to make it easy to attack the problem.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
Yes and no. Pseudocode helped us understand what the challenge is and what steps are needed to solve it. We had some difficulties figuring out what type of methods we should use to make it destructive and non-destructive for our initial solutions. I will say we were pretty successful figuring out what we need to do in order to get the output we needed and finding the codes to make it work.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
It failed the first time when we run the test and two errors showed up which was stating that our destructive is not destructive and non destructive is not a non destructive solution. We went back and look at our solution to find what we were missing. Turns out, for our destructive solution, we didn't make our output as a permanent change and our non destructive's output as permanent. I fixed the destructive solution by pushing the new elements into the array and Andrew fixed the non destructive solution by creating a new_array so it won't affect the original.

When you refactored, did you find any existing methods in Ruby to clean up your code?
We found a method called fill and what it does is it fills element in an array. It can also pass a starting index and length as argument for filling. This method simiplied my entire code for both solution. We also fournd a method called clone for our non destructive solution which clones the original array before getting filled. 

How readable is your solution? Did you and your pair choose descriptive variable names?
I say our code is very easy to read because it looks like we were writing it out in English. 

What is the difference between destructive and non-destructive methods in your own words?
Destructive is when your method make permanent changes to the original array while non destructive make changes without affect the original array.
=end