# Numbers to English Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode



# Initial Solution
one = { 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}
ten = {2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety" }





def numberWords(number, one, ten)
  if one.has_key?(number)
    puts firsthash[number]
  else
    x = number.to_s.split('').map { |num| num.to_i }
    puts "#{ten[x[0]]} #{one[x[1]]}"
  end
end

numberWords(99, one, ten)

# def in_words(int)
#   numbers_to_name = {
#       1000000 => "million",
#       1000 => "thousand",
#       100 => "hundred",
#       90 => "ninety",
#       80 => "eighty",
#       70 => "seventy",
#       60 => "sixty",
#       50 => "fifty",
#       40 => "forty",
#       30 => "thirty",
#       20 => "twenty",
#       19=>"nineteen",
#       18=>"eighteen",
#       17=>"seventeen", 
#       16=>"sixteen",
#       15=>"fifteen",
#       14=>"fourteen",
#       13=>"thirteen",              
#       12=>"twelve",
#       11 => "eleven",
#       10 => "ten",
#       9 => "nine",
#       8 => "eight",
#       7 => "seven",
#       6 => "six",
#       5 => "five",
#       4 => "four",
#       3 => "three",
#       2 => "two",
#       1 => "one"
#     }
#   str = ""
#   numbers_to_name.each do |num, name|
#     if int == 0
#       return str
#     elsif int.to_s.length == 1 && int/num > 0
#       return str + "#{name}"      
#     elsif int < 100 && int/num > 0
#       return str + "#{name}" if int%num == 0
#       return str + "#{name} " + in_words(int%num)
#     elsif int/num > 0
#       return str + in_words(int/num) + " #{name} " + in_words(int%num)
#     end
#   end
# end

# p in_words(4520)



# Refactored Solution






# Reflection