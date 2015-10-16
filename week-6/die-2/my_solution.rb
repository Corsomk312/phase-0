# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:an array of random characters
# Output:a random roll from the list of characters and the amount of characters in the list
# Steps: ensure our input is satisfactory. create the necessary variables. roll a random character and return it.


# Initial Solution

class Die
  def initialize(labels)
  	@labels = labels
  	if labels.empty? == true
  		raise ArgumentError.new("Please insert a valid array please and thanks")
  	end
  end

  def sides
  	return @labels.length
  end

  def roll
  	return @labels.sample
  end
end






# Refactored Solution








# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

# The main difference was that one was dealing with an argument of an integer, and this is an argument of a string with any variable inputs. I didn't have to do much changing with the logic. You're making the program do the same thing, just with a slightly different input and ArgumentError.

# What does this exercise teach you about making code that is easily changeable or modifiable?

# It was really good to see that the cleaner your code is the easier it is to modify. Code that is easy to read and modify will really help and simplifies things down the road. 


# What new methods did you learn when working on this challenge, if any?

# I learned .sample is the quickest way to get a random spot from within an array. Other than that I only used the .length method.


# What concepts about classes were you able to solidify in this challenge?

# It helped me to get more practice building classes. I understand better now that calling class methods is going to be very helpful as we get into more complicated code.