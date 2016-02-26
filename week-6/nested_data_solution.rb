# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

p nested_data[:array][1][:hash]

# attempts:
# ============================================================



# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]


number_array.map! do |element|
  if element.kind_of?(Array)
    element.map! {|inner| inner += 5}  
  else
    element += 5
  end
end

p number_array

# Bonus: 

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.each do |element|
  if element.is_a?(Array)
      element.each do |inner_element|
        if inner_element.is_a?(Array)
            inner_element.each do |third|
              third << "?!"
            end  
        else
            inner_element << "!!!"
        end
        end
  else 
    element << "X"
  end 
end

p startup_names


=begin
What are some general rules you can apply to nested arrays?
We need to know how many levels there are whether it's for an array or hash. After that, use the most basic way to call out each elements from the array/hash to make sure we know exactly where they are located before working on a method. Working with nested arrays/hash can be simple as long as we know where everything are located at and calling it our correctly.

What are some ways you can iterate over nested arrays?
The way I did it was using if/else to determine whether an element is an array, if it is then we can take it out and work with that array or even pull out another array within it if there's any.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
We pretty much used the same method which was if/else. The reason was that it was our first time looping a nested array/hash and we both agree that it's better for us to use something simple so we can understand how looping a nested array/hash better.
=end