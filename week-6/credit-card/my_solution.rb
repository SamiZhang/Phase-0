# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 digit number for a credit card
# Output: True or False 
# Steps: 
# 1) Check if the credit card is 16 digits. 
# 2) Double every other digits starting from the second last digit
    # - Working backward 
# 3) Sum all of the untouched numbers and doubled digits. 
#     - Break up double digits into single digits
# 4) If the total is multiple of 10 it's a valid credit card. If not, it is invalid.


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

def initialize (number)
    @num = number
    @length = number.to_s.length
    raise ArgumentError.new("false") if @length > 16
    raise ArgumentError.new("false") if @length < 16
end

def check_card
    digits = @num.to_s.split("").reverse
    digits.map! {|string| string.to_i}
    doubled_digits = digits.map.with_index {|x,y| 
    if y % 2 == 0
      x
    else 
      x*2
    end  
    }
    
  sum = doubled_digits.join("").split("").map!{|string_number| string_number.to_i}.reverse
  
  total = sum.inject(0){|sum,x| sum + x }
  
    if total % 10 == 0
        return true
    else
        return false
    end    
end
end


# Refactored Solution

class CreditCard

def initialize (number)
    @num = number
    raise ArgumentError.new("false") unless @num.to_s.length == 16
end

def check_card
    digits = @num.to_s.split("").reverse.map! {|string| string.to_i}
    doubled_digits = digits.map.with_index {|x,y| 
    if y % 2 == 0
      x
    else 
      x*2
    end  
    }
    
  sum = doubled_digits.join.chars.map!{|string_number| string_number.to_i}
  
  
    total = sum.inject(:+)
  
    if total % 10 == 0
        return true
    else
        return false
    end    
end
end


# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?
Figuring out why we kept getting the same two errors which was not being able to return true or false. We started out early because we already know we will need extra time for this one but never expected to be 4 hours. We got to a point that we really don't know what else to do after making changes and attempting to fix the error. Turns out, we were completely on the right track and our code was correct, it was just that we put an extra "end" somewhere which caused the two errors. I need to get better at checking my code.

What new methods did you find to help you when you refactored?
I find "chars" to be extremely useful to help me refactor for this challenge. Well, I didn't refactor much but "chars" was definitely a good method to use!

What concepts or learnings were you able to solidify in this challenge?
I was able to solidify how to construct my codes in orders better and also using variables to store my codes. Never felt how useful variables are until this challenge. LOL
=end