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