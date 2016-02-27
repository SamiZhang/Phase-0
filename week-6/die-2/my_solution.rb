# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: A side randomly picked from the array of strings
# Steps: 
=begin
1. IF array is empty raise ArgumentError
2. Assigne sides as the length of the array
3. Allow method roll to be able to pick a random string from the input
=end


# Initial Solution

class Die
  def initialize(labels)
    if labels.length == 0
      raise ArgumentError.new("Array cannot be empty.") 
    else
      @labels = labels
      @sides = labels.length
    end  
  end

  def sides
    return @sides
  end

  def roll
    @random = @labels.sample
    return @random
  end
end



# Refactored Solution

class Die
  def initialize(labels)
    @labels = labels
    @sides = labels.length
    @random = @labels.sample
    raise ArgumentError.new("Array cannot be empty.") if @sides == 0
  end

  def sides
    return @sides
  end

  def roll
    return @random
  end
end


# Reflection
=begin 
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
I think the biggest differences are the input is an array of strings instead of an integer, and it is able to randomly pick and return a string from the array.

What does this exercise teach you about making code that is easily changeable or modifiable? 
Keeping things simple and giving a valuable to codes that you know you will be using later. Initialize method is great because once you set most of the codes to an instance variable, you can call it whenver you want within the class without typing everything again. 

What new methods did you learn when working on this challenge, if any?
I didn't learn any new methods but I did get a chance to use the sample method which randomly pick a string from an array.

What concepts about classes were you able to solidify in this challenge?
The importance of using instance varialbes because it allows us to initialize any methods within the class without typing the whole code again. This help keeping things easy to read and to understand.
=end