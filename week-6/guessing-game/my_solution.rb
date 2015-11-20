# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#   end

#   def guess(guess)
#   	@guess = guess

#   	if @guess >  @answer
#   		return :high
#   	elsif @guess < @answer
#   		return :low
#   	else 
#   		return :correct
#   	end
#   end

#   def solved?
#   	if @guess == @answer
#   		return true
#   	else 
#   		return false
#   	end
  				
#   end

#  end


  # Make sure you define the other required methods, too

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
  	@guess = guess

  	if @guess >  @answer
  		return :high
  	elsif @guess < @answer
  		return :low
  	else 
  		return :correct
  	end
  end

  def solved?
  	if @guess == @answer
  		return true
  	else 
  		return false
  	end
  				
  end

 end



# Refactored Solution

# I couldn't find any methods that would help me with this. I tried to make my solved? method read -- return false unless @guess == @answer -- but that was failing to change the response from false to true. It still feels like the logic is the same, unless I'm assuming an implicit return of true where there is none. 

#I could have used .include? but I don't feel like that would have made anything easier to read.




# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

# 	They hold information and perform specific tasks within that class. So they operate like all tools/objects in the real world, they're built a certain way to achieve a certain effect. 

# When should you use instance variables? What do they do for you?

# 	You should use instance variables when you're going to be using the information stored for more than one method. They allow you to only ask for information in one place while being able to use that info in multiple places. They allow for more to be done within a class, and they allow for methods to work together using the same information to do different things. 

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
	
# 	You use flow control to direct the flow of the program based on your conditions. You use it by telling a program to go through and do these tasks or perform these checks and to then point the program in the direction that you want it to go. I didn't really have any problem with it in this challenge. I think I was overthinking a little bit at times and just had to make it simpler to get it to work.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# 	I'm not entirely sure why we used symbols here, since we are not iterating over a lot of data. I think it was a good example to see that symbols operate similarly to strings, but that they allow for a more efficient use of the program. A symbol is immutable, and every instance of the symbol will have the same object id. Compare that to strings, which even if they say the same thing they have a different object id, requiring the program to use more memory than it has to. 
# 	I feel like it wasn't totally necessary for this program, but it definitely seems like a habit I want to get into.