# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? 
	#Input is an array, minimum size of the array, and optional 'pad' for the missing spots in the array.
# What is the output? (i.e. What should the code return?)
	#Output is going to be a new array of at least min_size, inputting 'value' if min_size is not met for pad and making the above mods to the original array for pad!
# What are the steps needed to solve the problem?
	#We are going to need to first check the size of the array against the min_size value.
	#IF the array is larger than or equal to min_size, return the array.
	#IF the array is smaller we must add the pad value into the array until length equals min_size and then return a copy of the array for pad, and the modified array for pad!


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
  	return array
  else 
  	i = array.length
  	while i < min_size
  		array.push(value)
  		i += 1
  	end
  	return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  copy_array = array
  if array.length >= min_size
  	return array
  else 
  	i = array.length
  	while i < min_size
  		copy_array.push(value)
  		i += 1
  	end
  	return copy_array
  end
end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
  	return array
  else 
  	i = array.length
  	while i < min_size
  		array.push(value)
  		i += 1
  	end
  	return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  copy_array = Array.new(array)
  if copy_array.length >= min_size
  	return copy_array
  else 
  	i = copy_array.length
  	while i < min_size
  		copy_array.push(value)
  		i += 1
  	end
  end
  return copy_array
end

# 4. Reflection
# Were you successful in breaking the problem down into small steps?
#I was successful. Simply put there were only 3 steps you needed to take. Didn't want to break the steps down too greatly before I got into the actual coding.


# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
#I felt pretty comfortable going from psuedocode to code. I actually hand-wrote some of the psuedocode to slow myself down and really get a firm grasp of the problem at hand. I needed to double check my math on .length vs the value of i but that was just a small hiccup.


# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
#I encountered 2 errors, saying that I was being desctructive in my pad method. It turns out assigning the value of the old array to a new array via = gives them the same object_id, so I needed to refactor the Array.new method. Once I refactored that it passed everything.



# When you refactored, did you find any existing methods in Ruby to clean up your code?
#My code felt pretty tight and clean so I actually didn't find anything to refactor. I could re-do my while loop with .each, but I feel more comfortable with while.


# How readable is your solution? Did you and your pair choose descriptive variable names?
#The only variable I created was copy_array, and I felt that did a pretty good job describing what it was doing. 


# What is the difference between destructive and non-destructive methods in your own words?
#Destructive methods don't necessarilly destroy anything, they just modify the original objects. So instead of creating a copy it just takes your original and modifies that information forever. non-destructive methods play it safe, they make a copy of the original and return that after modifying it. Non-destructive methods buy long-term gov't backed bonds whereas destructive methods enjoy the tumultuous nature of the stock market itself.