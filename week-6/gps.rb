
# Your Names
# 1)Milorad Felbapov
# 2)Sami Zhang

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

class ServingSizeCalc
  MENU = {
    'cookie' => 1
    'cake'   => 5
    'pie'    => 7
  }
  
  def initialize(item, num)
    @item = item
    @num = num
  end
  
  def calculate_servings
    raise ArgumentError.new("#{item_to_make} is not a valid input") unless MENU[item]
    
    "Calculations complete: Make #{order} of #{item}." + " #{remaining_ingredients_string}"
  end
  
  private
    
  attr_reader :item, :num
  
  def order
    num / serving_size
  end
  
  def serving_size
    MENU[item]
  end
  
  def remaining_ingredients
    num % serving_size
  end
  
  def remaining_ingredients_string
    return "" unless remaining_ingredients > 0
    
    # "You can make #{remaining_ingredients} cookies, or 1 cookie and 1 cake."
  end
end


def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  
  unless library.has_key?(item_to_make) 
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
    
  serving_size = library[item_to_make]   
  
    
    
    
  library.select do |food, serving_size|
    # somehow we need to find items in our library whose serving size is less than the remaining_ingredients
  end
  
    
  
  
  
  


#   library.each do |food|  # |food, qty| library[['cookie', 1]] = nil
#     # p library[food]
#     if library[food] != library[item_to_make]
#       error_counter += -1
#     end
#   end

#   if error_counter > 0
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end

#  serving_size = library.values_at(item_to_make)[0]
  remaining_ingredients = num_of_ingredients % serving_size
  
  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  when 1..4
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. You can make #{remaining_ingredients} cookies"
  when 5
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. You can make #{remaining_ingredients} cookies, or 1 cake."
    
  when 6  
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. You can make #{remaining_ingredients} cookies, or 1 cookie and 1 cake."
  end
  
end  


  
#   else
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end
# end
  
  

  
  

#   case remaining_ingredients
#   when 0
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
#   when   
#   else
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end
# end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

