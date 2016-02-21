# Research Methods

# I spent [1] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

#Person 1's solution: Erica Lloyd
def my_array_finding_method(source, thing_to_find)
  source.select { |item| item =~ /#{thing_to_find}/ } #=> Returns items from source array where item matches thing_to_find
end

p my_array_finding_method(i_want_pets, "t")

def my_hash_finding_method(source, thing_to_find)
  match_hash=source.select { |key,value| value == thing_to_find } #=> Returns key/value pairs from source hash where value matches thing_to_find
  match_array =[]
  match_hash.each {|key, value| match_array.push(key)}
  match_array
end

p my_hash_finding_method(my_family_pets_ages, 3)




# Person 2: Dan Shapiro
def my_array_modification_method!(source, thing_to_modify)
  source.collect! do |item| # Array#collect! overrides original array
    if item.is_a? Integer #searches for integers and modifies them
      item + thing_to_modify
    else
      item #leaves non intgers alone
    end
  end
end

p my_array_modification_method!(i_want_pets, 3)

def my_hash_modification_method!(source, thing_to_modify)
  source.each {|key, value| source[key] = value + thing_to_modify}
  # similar to creating a new key-value store, this block looks at each key and adds the number in "thing_to_modify" to the the key's value
end

p my_hash_modification_method!(my_family_pets_ages, 2)




# Person 3: Sam Zhang
def my_array_sorting_method(source)
  source.sort { |a,b| a.to_s <=> b.to_s } # sort string within array alphabetically
end
p my_array_sorting_method(i_want_pets)


def my_hash_sorting_method(source)
   source.sort { |a1,a2| a1[1] <=> a2[1]} # sort hash according to it's value from smalles to largest
end
p my_hash_sorting_method(my_family_pets_ages)

# Person 4: Hanna Taylor

# Pseudocode:
# input = takes an array and a letter
# steps =
# Convert each item in the list to a string
# Search through the list to find words with that desired letter
# If a word has that letter, delete the word
# output = a new list without that word that you just deleted

def my_array_deletion_method!(source, thing_to_delete)
  source.each {|word| remove_word = word.to_s
    if remove_word.include?(thing_to_delete) == true
      source.delete(string)
      p source
    end
  }
end

# Psuedocode:
# Input = the thing you want to delete
# Steps = delete it
# Output = a new list without that thing you want to delete.

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete(thing_to_delete)
  p source
end


# Identify and describe the Ruby method(s) you implemented.
# For both of my methods I used ".sort" to sort data within each arrays.
# ".sort" must put a comparison between [a] and [b] 

# i_want_pets requied to sort the data alphabetically but the array includes strings and numbers
# ".sort" cannot sort an array with both strings and numbers
# ".sort" can only search, compare, and sort same type of values.
# Therefore, I must change every value inside the array into a string in order to ".sort"
# a <=> b will compare the data and sort it alphabetically but because we need to make sure every value is read as a string I edited to a.to_s <=> b.to_s
# This will return an array sorted alphabetically as [2, 3, "I", "but", "have", "only", "pets", "want"]

# my_family_pets_ages is a hash which required to call for both key and value to sort
# To ".sort" a hash is similar to ".sort" an array except that you need to include key[a] and value[1]
# |a1,a2| [a] represent keys and [1]/[2] represent value.
# For this challenge we are sorting out by age(value)
# Therefore, key[a] can be the same letter as to value[1]/[2] needs to be different
# Since we wanto to ".sort" by age from youngest to oldest, I had the comparison as a1[1] <=> a2[1]
# This will return an hash sorted by it's value as ["Annabelle", 0], ["Ditto", 2], ["Hoobie", 3], ["Bogart", 4], ["Poly", 5], ["Evi", 6], ["George", 12]
# If we want to ".sort" it from oldest to younges, we can change it to a1[2] <=> a2[2] or a2[1] <=> a1[1]



