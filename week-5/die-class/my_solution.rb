# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:Number of side on a die
# Output:random number based on how many side of the die there are
# Steps:initialize your class. define instances within your class for figuring out how many sides and returning a random roll when called.


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    unless @sides > 1
    	raise ArgumentError.new("Only positive numbers are allowed")
  	end
  end

  def sides
  	return @sides
  end

  def roll
    return rand(1..@sides)
  end
end



# What is an ArgumentError and why would you use one?

# An ArgumentError is when the user inputs an argument that isn't valid. It can involve putting in the wrong number of arguments, or like in this case, when the input is no a positive number. You would call when you want to limit the type of arguments inputted into your method.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

# I used .rand for the first time. I initially didn't put in the range for the random number, I had only listed the range to be @sides. So it was good to know that you can put a range into create a random number.

# What is a Ruby class?

# A ruby class is an object. It is a collection of methods and variables that you can create when you're going to use similar techniques multiple times across your program.

# Why would you use a Ruby class?

# When there is information you are going to use over and over again. It helps consolidate your code and to help you organize over larger data groups.

# What is the difference between a local variable and an instance variable?

# A local variable is a variable that exists only within a method. It can never be accessed by anything but that method. An instance variable can be seen by any instance in the class where it is called, not just a single solitary method, but across the whole class.


# Where can an instance variable be used?

# An instance variable can be used anywhere within the class where it has already been defined. 