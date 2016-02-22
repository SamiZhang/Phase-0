# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent [1] hours on this challenge.

# 0. Pseudocode

# Input: Sides of die
# Output: Random number 
# Steps:
=begin
Call for Die.new(number_of_sides) 
IF sides is less than 1 then raise_error
IF sides is more than 1 then it will return a random number between 1 and the input number
=end

# 1. Initial Solution

class Die
  def initialize(sides)
    if sides < 1
        raise ArgumentError.new ("Sides cannot be less than 1 or 1")
    else
        @sides = sides
    end    
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end        
end



# 3. Refactored Solution (I couldn't find any new methods to refactor this. Please let me know how I can refactor this if you know any methods. Thank you!)

class Die
  def initialize(sides)
    if sides < 1
        raise ArgumentError.new ("Sides cannot be less than 1 or 1")
    else
        @sides = sides
    end    
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end        
end





# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
An ArgumentError is a way to tell someone that the input for argument is wrong and we should use it because it prevents any methods from running a wrong argument.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
I guess it's the random method. This method is not new to me but it's my first time using it. It was easy implemting the method but I did it wrong the first time by excluding the last number (...). I forgot that (..) was the one that include the last number.

What is a Ruby class?
Ruby class is way for us to create a blank object. Instead of adding method(s) to an existing object, we can create a new one with methods and properties along with it. 

Why would you use a Ruby class?
I would use Ruby class because it's more convenient when creating objects with similar methods since I can group those objects under the same class.

What is the difference between a local variable and an instance variable?
Local variable can only be used in a method and inside that method only. Instance variable can be used throughout different methods within a class.

Where can an instance variable be used?
It can be used in any methods within a class.
=end