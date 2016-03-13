# I worked on this challenge by myself.
# This challenge took me [1] hours.


# Pseudocode
=begin
1. create method "super_fizzbuzz" taking array of numbers as argument
2. RETURN 'Fizz' IF number is multiples of 3
3. RETURN 'Buzz' IF number is multiples of 5
4. RETURN 'FizzBuzz' IF number is multiple of 15
=end

# Initial Solution

def super_fizzbuzz(array)
    array.collect! { |n|
        if (n % 3 == 0 && n % 5 == 0)  
            "Fizzbuzz"
        elsif (n % 5 == 0) 
            "Buzz"
        elsif (n % 3 == 0)
            "Fizz"
        else
            n
        end       
    }
    p array
end    

# Refactored Solution

def super_fizzbuzz(array)
    array.map! do |n|
        case 
            when n % 3 == 0 && n % 5 == 0 
                n = "Fizzbuzz"
            when n % 5 == 0 
                n = "Buzz"
            when n % 3 == 0
                n = "Fizz"
            else
                n
        end
    end
    p array
end




# Reflection
=begin
What concepts did you review or learn in this challenge?
I reviewed map and collect in this challenge. I wasn't super familiar with those methods so I decided to work on this challenge to refresh my memory and also practice using them.

What is still confusing to you about Ruby?
So far, I don't think there's anything confusing about Ruby but I need more practice with it to be better.

What are you going to study to get more prepared for Phase 1?
Definitely study more about Ruby's build in methods, read about algorithms, and practice whenever I can to be more familiar with it! Don't want to be rusty when I reach phase 1.
=end