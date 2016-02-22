=begin
Pseudocode:
Create a method name groups with argument of strings 
Find out the total number of people within cohort
Decide the number of people in each group
    IF total people divided by 5 equals to 0 then 5 people in each group
    IF total people divided by 5 remains 1 then two groups of 3 and rest is group of 5 people
    IF total people divided by 5 remains 2 then one group of 3, one group of 4, and rest is group of 5 people
    IF total people divided by 5 remains 3 then one group of 3 and rest is group of 5 people (remain 3 can form a group)
    ELSE one group of 4 and rest is group of 5 people (remain 4 can form a group)
End method    
=end

#Initial Solution
def groups(rock_dove)
    total = rock_dove.count
    group = total%5
    
    case group
        when 0
            p rock_dove.shuffle.each_slice(5) {|slice| p slice}
        when 1
            a = rock_dove.shuffle
            extra = a.shift(6).each_slice(3){|slice| p slice}
            group_of_5 = a.each_slice(5) {|slice| p slice}
        when 2
            a = rock_dove.shuffle
            extra = a.shift(7).each_slice(4){|slice| p slice}
            group_of_5 = a.each_slice(5) {|slice| p slice}
        when 3
            p rock_dove.shuffle.each_slice(5) {|slice| p slice}
        else 
            p rock_dove.shuffle.each_slice(5) {|slice| p slice}
    end
end

#Refactored Solution

def groups(rock_dove)
    total = rock_dove.count
    group = total%5
    shuffle_list = rock_dove.shuffle
    
    case group
        when 0
            p rock_dove.shuffle.each_slice(5) {|slice| p slice}
        when 1
            shuffle_list.shift(6).each_slice(3){|slice| p slice}
            shuffle_list.shuffle.each_slice(5) {|slice| p slice}
        when 2
            shuffle_list.shift(7).each_slice(4){|slice| p slice}
            shuffle_list.shuffle.each_slice(5) {|slice| p slice}
        when 3
            p rock_dove.shuffle.each_slice(5) {|slice| p slice}
        else 
            p rock_dove.shuffle.each_slice(5) {|slice| p slice}
    end
end

=begin
What was the most interesting and most difficult part of this challenge?
The most interesting was learning how to use "case" for this challenge. I read about it before but never got a chance to put it in use until this challenge. The difficult part was figuring out how to take the extra people out first and put them in groups of 3 or 4, then put the rest into groups of 5.

Do you feel you are improving in your ability to write pseudocode and break the problem down?
A little bit. It's becoming easier for me to write out my pseudocode but I don't really follows it all the time because either it doesn't works or I started to do something else without realizing. With that, I always have to edit my pseodocode. 

Was your approach for automating this task a good solution? What could have made it even better?
I think it's pretty good and I couldn't think of anything to make it better. Right now, the method can take any numbers of strings and put them into either group of 5, 4, or 3. So, it's not limited to just our cohort's number of students but we can add or remove students and still able to put them into new groups of 5, 4, or 3.

What data structure did you decide to store the accountability groups in and why?
I chose array because it's much easier to work with when I want to take and group elements from it. Also, for this challenge, I don't think there's any reason to use Hash because all we are inputting is a list of names. 

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
I learn how to use "case" and methods like "shift" and "each_slice". 
=end
        
   

    