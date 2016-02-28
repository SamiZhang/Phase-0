# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [6.5] hours on this challenge.


# Release 0: Pseudocode
# Outline:
=begin
# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  1. Randomly pick one of the letters out from array with B,I,N,G,O
  2. Randomly pick one of the numbers between 1 to 100
  3. When called, return one letter and one number that's randomly picked

# Check the called column for the number called.
  1. Compared the randomly picked letter and number to see IF board contains it
  2. Use method case?
     - WHEN random letter then see if number match???
    *note to self* Everything under "B" will be [0], "I" is [1], "N" is [2], "G" is [3], "O" is [4]
     - find way to check number according to index WHEN random letter picked...
     OR
     - IF random letter then IF number match?
     ELSE nothing happens??

# If the number is in the column, replace with an 'x'
  1. IF randomly picked number is under the randomly picked letter on board, mark 'X'
  2. ELSE continue to pick a random letter and number without marking 'X'

# Display a column to the console
  1. Print the randomly picked letter and number

# Display the board to the console (prettily)
  1. Display board to the console with 'X' if match
  2. Every 'X' marked should be permanent until BINGO

# Initial Solution
=end
# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end
  
#   def call
#     @letter = ["B", "I", "N", "G", "O"].sample
#     @number = rand(1..100)
#     @let_num = "#{@letter}#{@number}"
#   end
  
#   def check
#     @bingo_board.each do |i|
#     case @letter
#       when "B"
#         i[0] == @number ? i[0] = "X" : @number
      
#       when "I"
#         i[1] == @number ? i[1] = "X" : @number
      
#       when "N"
#         i[2] == @number ? i[2] = "X" : @number
      
#       when "G"
#         i[3] == @number ? i[3] = "X" : @number
        
#       when "O"
#         i[4] == @number ? i[4] = "X" : @number
      
#       else
#         p "You sure you're playing BINGO?"
#     end
#     end
#   end
  
#   def board
#     p @let_num
#     puts "  B-----I-----N-----G-----O "
#     @bingo_board.each do |row|
#       row.each do |number|
#         print number.to_s.center 6
#       end
#       puts
#     end
#   end  
    
# end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end
  
  def call
    @letter = ["B", "I", "N", "G", "O"].sample
    @number = rand(100)
    @let_num = "#{@letter}#{@number}"
  end
  
  def check
    @bingo_board.each do |i|
    case @letter
      when "B"
        i[0] == @number ? i[0] = "X" : @number
      
      when "I"
        i[1] == @number ? i[1] = "X" : @number
      
      when "N"
        i[2] == @number ? i[2] = "X" : @number
      
      when "G"
        i[3] == @number ? i[3] = "X" : @number
        
      when "O"
        i[4] == @number ? i[4] = "X" : @number
      
      else
        p "You sure you're playing BINGO?"
    end
    end
  end
  
  def board
    p @let_num
    puts "  B-----I-----N-----G-----O "
    @bingo_board.each do |row|
      row.each do |number|
        print number.to_s.center 6
      end
      puts
    end
  end  
    
end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

200.times do 
  new_game = BingoBoard.new(board)
  new_game.call  
  new_game.check
  new_game.board
end

#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
It wasn't as hard as I thought it would be because through reading release 1, it gave me a good idea of what I need to do. I think I'm slowly getting better at it as I start to really take my time and think deeper into how I can make this work and what are some possible methods. I mean, if the method I thought of doesn't work then I can always research and find another one.

What are the benefits of using a class for this challenge?
The benefits for this challenge are being able to put things together into one, and being able to use instance variables. Using class made this challenge easier to work with since I can connect all the methods together through instance variables. 

How can you access coordinates in a nested array?
You can use .each to look for nested array(s) or just call it out according to it's index like: a = ["a"["b","c]"] ==> p[1][0] return "b"

What methods did you use to access and modify the array?
I used the case method. With this method I can set conditions and tell it what to do if that condition happened. In this case, I set the randomly picked letter as my conditions. So, if "B" is picked then it will compare the randomly picked number with the numbers on bingo_board, and if match it will replace the number with "x".

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
I didn't really use a new method for this challenge. I did looked up and used center method to make my board to look nice. All you have to do is call it by typing .center and right after it put a number that represents the length of the whole string. This method can only be use for string so to center my numbers, I first have to change it to a string. 

How did you determine what should be an instance variable versus a local variable?
If something that is only needed for one specific method then I will use local variable. If something that will be used all over the class I'm working with then I will set it to a instance variable.

What do you feel is most improved in your refactored solution?
A big fat nothing! I'm really bad at refactoring because I can never find another working method that can make my codes look more readable and shorter. I do think that I'm not spending enough time to look for a better method and still need to study more on my own to learn more methods for refactoring.
=end