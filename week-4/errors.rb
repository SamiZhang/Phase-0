# Analyze the Errors

# I worked on this challenge by myself.
# I spent [1.5] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end
# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# error.rb
# 2. What is the line number where the error occurs?
# I believe  it's line 14 because next to it because there's a message right next to it saying "mismatched indentation at 'end' with 'while' at 14"
# 3. What is the type of error message?
# A syntax error
# 4. What additional information does the interpreter provide about this type of error?
# Unexpecected end-of-input, expecting keywork_end
# 5. Where is the error in the code?
# The error is missing an "end" for the parameter "while".
# 6. Why did the interpreter give you this error?
# It's neccessary to end the parameter first then end the method. 

# --- error -------------------------------------------------------

south_park = 'Very funny!'

# 1. What is the line number where the error occurs?
# 35
# 2. What is the type of error message?
# in '<main>'
# 3. What additional information does the interpreter provide about this type of error?
# Undefined local variable or method 'south_park' for main
# 4. Where is the error in the code?
# Object (NameErro). The name cannot be defined.
# 5. Why did the interpreter give you this error?
# Variable need to be assigned to a string, array, or number in Ruby or it cannot be defined. 

# --- error -------------------------------------------------------

def cartman()
end
# 1. What is the line number where the error occurs?
# 50
# 2. What is the type of error message?
# in '<main>'
# 3. What additional information does the interpreter provide about this type of error?
# Undefined method 'carman' for main
# 4. Where is the error in the code?
# Object (NoMethodError). Method is not define corretly
# 5. Why did the interpreter give you this error?
# Method wasn't defined properly with 'def' and ending with 'end'.

# --- error -------------------------------------------------------

def cartmans_phrase (x)
  if x >= 130
  puts "I'm not fat; I'm big-boned!"
  end
end

cartmans_phrase(135)

# 1. What is the line number where the error occurs?
# 65
# 2. What is the type of error message?
# in 'cartmans_phrase'
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments (given 1, expected 0) (ArgumentError)
# 4. Where is the error in the code?
# The interpreter could not find an argument from method.
# 5. Why did the interpreter give you this error?
# Ruby is required to use () after def method_name to create argument for that method.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  if offensive_message != 'hello'
  puts offensive_message
  end
end

cartman_says('bye')

# 1. What is the line number where the error occurs?
# 88
# 2. What is the type of error message?
# in '<main>'
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments (given 0, expected 1) (ArgumentError)
# 4. Where is the error in the code?
# Method is called without an argument
# 5. Why did the interpreter give you this error?
# There was no given argument for the method created.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Sam')

# 1. What is the line number where the error occurs?
# 113
# 2. What is the type of error message?
# in '<main>'
# 3. What additional information does the interpreter provide about this type of error?
# Wron number of arguments (given 1, expected 2) (ArgumentError)
# 4. Where is the error in the code?
# There's not second argumetn for the method being called.
# 5. Why did the interpreter give you this error?
# If method is expected to have 2 arguments then when method is being called need to have exactly 2 arguments as well.

# --- error -------------------------------------------------------

puts "Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# 128
# 2. What is the type of error message?
# in '*'/ in '<main>'
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum (TypeError)
# 4. Where is the error in the code?
# The error is trying to multiply a number with a string
# 5. Why did the interpreter give you this error?
# Ruby cannot multiply a number with a string but it can multiply a string with any number.

# --- error -------------------------------------------------------

amount_of_kfc_left = 0/12


# 1. What is the line number where the error occurs?
# 143
# 2. What is the type of error message?
# in '<main>' and in '/'
# 3. What additional information does the interpreter provide about this type of error?
# Divided by 0 (ZeroDivisionError)
# 4. Where is the error in the code?
# Trying to divide an integer by 0
# 5. Why did the interpreter give you this error?
# An integer cannot be divided by 0. 

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 159
# 2. What is the type of error message?
# in 'require_relative'
# 3. What additional information does the interpreter provide about this type of error?
# Cannot load such file -- /home/ubuntu/workspace/week-4/cartmans_essay.md (LoadError)   
# 4. Where is the error in the code?
# Cannot locate file.
# 5. Why did the interpreter give you this error?
# The path to find the file is incorrect. 


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
Which error was the most difficult to read?
I think the last error was the most difficult to read because the path to different files are different and one must really pay attention to where the file is and how the path is written.

How did you figure out what the issue with the error was?
I figured out the issue by looking at the additional information that was given by the error. 

Were you able to determine why each error message happened based on the code? 
Yes! Most of them were pretty obvious of what was missing to cause the error.

When you encounter errors in your future code, what process will you follow to help you debug?
I will look at the error and find out which line is causing it and then look at the additional information given to figure out what the problem is. Once I figured out what the problem is then I can resolve the problem.
=end