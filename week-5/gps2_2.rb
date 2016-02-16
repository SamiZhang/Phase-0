# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Create a method named create_list and it will accept a string as input
  # Create hash for method create_list with default value for each key equal to 1
  # Split string into individual items and add to the hash
    # String.split(" ")
  # print the list to the console [can you use one of your other methods here?]
# output: Recieve a list of strings and each string will contain a key and a value from the hash

def create_list(string)
  list = Hash.new
  string.split(" ").each do |item|
    list[item] = 1
  end
  p list
end

grocery_list = create_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: list that created previously, new item, and quantity of new item
# steps: 
  # add new item into previous list
# output: previous list with new item and it's quantity included

def add_item(list, item, qty)
  list[item] = qty
  p list
end

add_item(grocery_list, "bread",3)
# p list

# Method to remove an item from the list
# input: list that created previously, item needed to be removed
# steps: remove an item from list
# output: previous list with an item removed

def remove_item(list, item)
  list.delete(item)
  p list
end  

remove_item(grocery_list, "bread")

# Method to update the quantity of an item
# input: list created previously, item, quantity
# steps: replace the item's old quantity with the new quantity
# output: previous list with updated item quantity

def new_quantity(list, item, qty)
  list[item] += qty
  p list
end

new_quantity(grocery_list, "carrots", 5)

# Method to print a list and make it look pretty
# input: list
# steps: take each item from the list and write it out along with its value
# output: nicer looking list with the hash's information

def print_out(list)
  list.each { |a,b| puts "#{a} : #{b}" }
end

print_out(grocery_list)

=begin
What did you learn about pseudocode from working on this challenge?
I learned that pseudocode are used to write out what you want the method to do and it helps you when creating the method. Pseudocode for Ruby is like wireframe for HTML.

What are the tradeoffs of using Arrays and Hashes for this challenge?
We can use array when calling the list to add or remove a item and/or quantity within a hash. Hash was used to list a set of items(key) and a quantity was given(value) which was great to create the list for this challenge. 

What does a method return?
A method returns a value accodring to the instructions given to the method.

What kind of things can you pass into methods as arguments?
You can pass strings, numbers, array, and even methods as arguments.

How can you pass information between methods?
Instead of just creating a local variable, we can create a method and set it's output to a variable and using it on other methods.

What concepts were solidified in this challenge, and what concepts are still confusing?
I think I have a much clearer undertanding of how to write a method to make it work a certain way. I know there are many ways to write a single method but the concept of writing it out was difficult for me. This challenge definitely solidfied that concept for me and I need to spend more time looking into Ruby syntax so I can really write a method without any confusions. 

John, 
This is something unrelated to this challenge but what would you say is a good way to practice Ruby? As you can see tonight, I really struggled figuring out how to create a method. I realized that I had major problem thinking through how to write the methods whether it's pseudocode or the solution.
Also, I want to know when to use (), [], and {}. From this challenge I saw that the brackets were used at different occasion. Does the brackets itself have specific usage or it just depends on what the code is?
Thank you for guiding tonight! You helped me a lot. 
=end
