# Calculate the mode Pairing Challenge

# I worked on this challenge with: Brad Lindgren

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# Create a method called mode.

# What is the input?
  # The input is an array of numbers or strings.
# What is the output? (i.e. What should the code return?)
  # A single element array containing the most frequent value from    the input array. If there is a tie for the most frequent value, it will return both values in the array.
# What are the steps needed to solve the problem?
  # Create an empty hash to store the values and the frequency with which they occur.
  # Iterate over the array and add the elements to hash as keys and give them a value of 1. If the element is already in the hash, add one to the value. Do not add a new key to the hash.
  # Return the key of the maximum value. Return it in an array.


# 1. Initial Solution

def mode(array)
  new_array = Array.new
  freq = Hash.new
  max_count = 1

  array.each do |i|
    if freq.include? (i)
       freq[i] += 1
      if freq[i] > max_count
         max_count = freq[i]
      end
    else
      freq[i] = 1
    end
  end
  freq.each {|k,v| new_array.push(k) if v == max_count}
  new_array
end

p mode ([1, 2, 3, 4, 5, 5, 7])
p mode ([4, 4, 5, 5, 6, 6, 6, 7, 5])
p mode (["apple", "banana", "clementine", "banana", "cherry", "strawberry", "cherry"])


# 3. Refactored Solution

def mode(array)
  freq = array.inject({}) { |k,v| k[v] = array.count(v); k }
  freq.select { |k,v| v == freq.values.max }.keys
end


# 4. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?
When we were doing the initial solution, we were really following our pseudocode and try to work things out step by step. We were just trying different things out when the code didn't work. 

Was your pseudocode effective in helping you build a successful initial solution?
Yes! It was helpful when working on the initial solution because we already wrote out the steps and know exactly what we need for each step to get the output we needed.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
I learned how to use "inject" and it definitely took me awhile to know how to use it fully. The example from ruby doc and "The Well-Grounded Rubyist" doesn't really show how to inject Hash specifically so I did end up having to google on that. I also learned how to use ".values", ".max", and ".key". When we tried to refactor, we were having trouble with the output to print the key(s) from the Hash because it kept printing the whole Hash. So, we started to look into ways that we can select the max value from the hash which we found (.vlaues) and (.max). Then we just needed to figure out how to print out the key(s) of a Hash only and we found (.key). Took some time, but found everything we need to make it work.

How did you initially iterate through the data structure?
We first created a new Hash called "freq" and also created a valuable called max_count that equals to 1. We used IF and Else statement to iterate. We had our Hash to add 1 everytime the same key appears. Then we set it IF anytime "freq[i]" is less than max_count, which is 1, then max_count will become whatever "freq[i]" is. Then we just pushed the key into the new_array if max_count equals to value.

Do you feel your refactored solution is more readable than your initial solution? Why?
Definitely! It's much shorter and more straight to the point of what you want the method to do.
=end