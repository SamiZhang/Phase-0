# Leap Years

# I worked on this challenge with Lilian Ku.


# Your Solution Below
puts "Please type in a year to check if it's leap year."
year = gets.to_i

def leap_year? (year)
    if year % 4 == 0
        puts "True"
    elsif year % 400 == 0
        puts "True"
    elsif year % 100 == 0
        puts "False"
    else
        puts "False"
    end    
end     

puts leap_year?(year)

