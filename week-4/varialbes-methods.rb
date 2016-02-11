#Full Name Greeting
puts 'Hello! May I have your first name?'
first_name = gets.chomp
puts 'May I also have your middle name?'
middle_name = gets.chomp
puts 'Finally, may I have your last name?'
last_name = gets.chomp
puts 'Thank you!'
puts 'Nice to meet you, ' + first_name + ' ' + middle_name + ' ' + last_name + '!'

#Bigger, better favorite number.
puts 'Hey you! What\'s your favorite number?'
fav_number = gets.chomp.to_i
better_number = fav_number + 1
puts 'Yeah? Well, ' + better_number.to_s + ' is bigger and better!!!!'

=begin
How do you define a local variable?
local_variable = "this will be the local variable and it can be anything"

How do you define a method?
def method(argument)
    put
    method
    here
end

What is the difference between a local variable and a method?
Local variable can only be set to one thing and it's action is very limited. We can do much more with method such as giving it specific instructions and when we call for the method it will follow the instructions to perform a task.

How do you run a ruby program from the command line?
You can run the ruby program by typing "ruby file_name.rb" into the command line. 

How do you run an RSpec file from the command line?
You run and RSpec file by typing "rspec spec_file.rb" into the command line. 

What was confusing about this material? What made sense?
I know this sounds dumb but I was confused with "p" and "puts". I kept using "puts" when I was suppose to use "p" and because of that I failed rspec multiple times. I would spend like 15 minutes checking what I have type wrong and end up just not using "p". Other than that, I think all the materials make sense to me! 

4.3.1
https://github.com/SamiZhang/Phase-0/tree/master/week-4/address

4.3.2
https://github.com/SamiZhang/Phase-0/tree/master/week-4/math
=end