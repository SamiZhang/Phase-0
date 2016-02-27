# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [1] hours on this challenge.

# Pseudocode

# Input: A random integer (guess)
# Output: "high" if input is larger than answer; "low" if input is smaller than answer; "correct" if input is same as answer
# Steps:
=begin
1. IF guess is larger than answer return "high"
2. IF guess is smaller than answer return "low"
3. IF guess is the same as answer return "correct"
4. Able to determine if guess is same as answer by returning "true" or "false"
=end


# Initial Solution

class GuessingGame
    def initialize(answer)
        @answer = answer
    end
    
    def guess(guess)
        @guess = guess
        if guess > @answer
            return :high
        elsif guess < @answer
            return :low
        else
            return :correct
        end        
    end
    
    def solved?
        if @guess == @answer
            return true
        else
            return false
        end    
    end
end

# Refactored Solution

class GuessingGame
    def initialize(answer)
        @answer = answer
    end
    
    def guess(guess)
        @guess = guess
        return :high if guess > @answer
        return :low if guess < @answer
        return :correct if guess == @answer
    end
    
    def solved?
        return true if @guess == @answer
        return false if @guess != @answer
    end
end




# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
In my interpretation, class is a blueprint with methods which act like an instruction within it that tell it what to do and instance variable is a convenient tool for us to call a method. In a sense, it's kind of like a chain buisness which has a standarize way of doing things but you can still modiefies it whenever you want to (class). And each of those buisnesses part of the same chain will have a bit difference on style, products, or whatever (instance varialbe and methods)?... I'm not making sense anymore but I tried lol

When should you use instance variables? What do they do for you?
We should use it when specific things are needed to be used throughout writing class. Instance variable allows you to write your code much easier as you can just call out a method by the variable you assigned to it. Also, instance variable can be used in any methods within a class once created.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
We can use flow control to determine whether if the input is true of false under different conditions. For this challenge, flow control was used to determine if guess was larger, smaller, or the same as answer. Each condidtion with return a different output.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
I think this code requires to return symbols because it's a guess game and it would be better if the program can run faster which is the benefit of using symbols.
=end