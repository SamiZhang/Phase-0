# I worked on this challenge by myself.


# Your Solution Below

def valid_triangle?(a, b, c)
    if ((a == b) && (b == c) && (c == a))
        puts "True, equilateral triangle."
    elsif ((a <= 0) || (b <= 0) || (c <= 0))
        puts "False, side cannot be 0." 
    elsif ((a == b) || (b == c) || (c == a)) 
        puts "True, isoscles triangle."
    elsif ((a**2 + b**2 == c**2) || (b**2 + c**2 == a**2) || (c**2 + a**2 == b**2))
        puts "True, pythagorean triples."
    else
        puts "Invalid triangle."
    end        
end

puts valid_triangle?(a,b,c)