# Numbers to Commas Solo Challenge

# I spent [3] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode
# What is the input? 
    # Input will be a positive integer as an argument
    
# What is the output? (i.e. What should the code return?)
    # Output will be a positive integer with comma(s) separating it
    
# What are the steps needed to solve the problem?
    # Create a method named separate_comma with an argument(num)
        # Turn argument(num) into string
        # Check length of string
        # Reverse string to add comma(s)
        # IF length is < 4 then puts num
        # IF length is > 3 the separate with comma
        # Add comma to every third digit to reverse string
          # reverse string back to normal
        
    # End method


# 1. Initial Solution
def separate_comma(num)
  s = num.to_s.to_a
  l = s.length
  r = s.reverse
  p s[0]
  # if l < 4 
  #   p num
  # elsif l > 3
  #   p r.gsub(/.../,'\&,').reverse  
  # end
end 

separate_comma(9653567464652435345234523450) 


# 2. Refactored Solution
# def separate_comma(num)
#   num.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
# end

# p separate_comma(900000000)

s[0]