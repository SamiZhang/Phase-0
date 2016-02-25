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