# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: a 16-digit integer
# Output: true or false based on whether it is a valid CC number
# Steps: Break apart the number into individual integers. Starting with the second to last digit, double every other digit until you reach the first. Then get the sum of every digit together. Once you have those digits you 


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize (number)
     @number = number.to_s
    unless @number.length == 16 
      raise ArgumentError.new ("Please enter valid CC number")
    end
   
end

  def check_card
    @arr1 = @number.chars.reverse
    @arr1.map! {|num| num.to_i}
    
    @arr1.each_index do |x| 
      if x.odd? 
        @arr1[x] = @arr1[x] * 2
      end
    end

  
    @arr1.map! {|num| num.to_s}
    @arr1.each_with_index do |x, i|
      if x.length > 1     
        @arr1[i] = x.chars
      end
    end
    
    @arr1.flatten!.map! {|num| num.to_i}
    
    @sum = 0
    @arr1.each {|num| @sum += num}
 
  if @sum % 10 == 0
    p true
  else
    p false
  end
end
  
  
end

# # Refactored Solution

# What was the most difficult part of this challenge for you and your pair?

# The most difficult part of this challenge was figuring out how to split and then add and then split the double digit numbers. We ended up having to switch back and forth between String and Integer a couple of times, but once we figured out an easy way to do that it wasn't too bad.

# What new methods did you find to help you when you refactored?

# We used .chars for the first time, which really helped when we were splitting the original number. I also had only used .map! once before so using that was good to get more experience with it.


# What concepts or learnings were you able to solidify in this challenge?

# Definitely helped solidify iterating through arrays and manipulating the data within them. Still had some trouble with assigning values properly to non-destructive methods. I was running the non-destructive method and it wasn't returning the values to the array. We ended up using destructive methods, since we didn't need to keep the original for any reason for this challenge.





# Reflection

