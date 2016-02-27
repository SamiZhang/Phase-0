#Attr Methods

# I worked on this challenge by myself.

# I spent [1] hours on this challenge.

# Pseudocode

# Input: Name
# Output: Greeting to whatever name it is.
# Steps:
=begin
1. Within class NameData, create method my_name
2. Name instance variable "name" and set value to "SamiZ"
2. Within class Greeting, create method initialize and hello
3. Set a instance variable named "name_data" with value as class NameData
4. Method hello should return a greeting with my name in it.
=end


class NameData

    def my_name
        @name = "SamiZ"
    end

end


class Greetings
    
    attr_reader :name_data
    
    def initialize
        @name_data = NameData.new
    end
    
    def hello
        p "Hello #{name_data.my_name}! How wonderful to see you today."
    end
end

greet = Greetings.new
greet.hello

# Reflection
=begin
Release 1
What are these methods doing?
The methods are defining a instance variable but there are three methods that allows us to change the value of the varialbes(change_my_age; change_my_name; change_my_occupation).

How are they modifying or returning the value of instance variables?
The instance varibles are assigned with a value within the class and it returns what it's assigned. THe value of those variables can be changed through three methods that have the instance valuable equals to the new input.

Release 2
What changed between the last release and this release?
This release doesn't need to create a method to return age because it used attr_reader :age. We can also call for age by just using .age instead of .what_is_age from realse 1.

What was replaced?
Method what_is_age was replaced with attr_reader :age

Is this code simpler than the last?
YES! Not only was the code simpler but also easier to look up age.

Release 3
What changed between the last release and this release?
This release you can change age without writing a new method for it because attr_writer :age is added.

What was replaced?
Method change_my_age was replaced with attr_writer :age

Is this code simpler than the last?
YES! Like mentioned before, we can change the age with out the need of a new method. We can just change age by typing out: instance_of_profile.age

Release 6: Reflect
What is a reader method?
Reader method returns a value that is set to a instance variable without changing it when called outside of class.

What is a writer method?
Writer method allows us to change the value that is set to a instance variable when called outside of class.

What do the attr methods do for you?
It allows us to write less methods within a class if we want to return a value or changing a value.

Should you always use an accessor to cover your bases? Why or why not?
Yes and no. Yes, because it's better than writing out getter or setter methods. No, because accessor is very powerful so it really depends on what you want the class to do, and if you do decide to use an accessor makes sure you're using the most appropriate one.

What is confusing to you about these methods?
No confusion for the accessor methods. Very straight forward and this challenge really helped me understanding each. 
=end