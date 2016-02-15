# Calculate a Grade

# I worked on this challenge with Lilian Ku.


# Your Solution Below
puts "Enter the grade number"
grade = gets.to_i

def get_grade(grade)
  if grade >= 90
    p "A"
  elsif grade >= 80
    p "B"
  elsif grade >= 70
    p "C"
  elsif grade >= 60
    p "D"
  else
    p "F"
  end
end

puts get_grade(grade)