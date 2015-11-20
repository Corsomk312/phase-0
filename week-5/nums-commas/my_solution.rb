# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?a positive integer
# What is the output? (i.e. What should the code return?)a positive integer to string with commas placed, if necessary
# What are the steps needed to solve the problem?
# I need to evaluate the integer to see if it needs a comma in the solution, and then to place one every 3 integers as long as it needs. 
#Going to need to make the integer a string. 



# 1. Initial Solution

# def separate_comma(num)
# 	array = num.to_s.chars.to_a
	
# 	if array.length < 4
# 		array = array.join.to_s
# 		return array
# 	elsif 
# 		array.reverse!
# 		i = 3
# 		while i < array.length
# 			array.insert(i, ",")
# 			i += 4
# 		end
# 		array.reverse!
# 		array = array.join.to_s
# 		return array
# 	end
# end





# 2. Refactored Solution

def separate_comma(num)
	str_num = num.to_s.reverse

	if str_num.length < 4
		return str_num
	else
		i = 3
		while i < str_num.length
			str_num.insert(i, ',')
			i += 4
		end
	end
	return str_num.reverse
end



# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?
# I just took the problem step by step. Knowing I needed to put it into a string, I took it a step further and put it into an array. This allowed me the flexibility to have each individual number in the original have an ordered place. Originally I was going to work from the position -3, but I figured reversing it would be fine. I also used .reverse! because I knew that wouldn't remove any of the data, and I could work with the original array without having to worry about the copy I made.


# Was your pseudocode effective in helping you build a successful initial solution?
# Psuedocode was very helpful in building a successful initial solution. It allowed me to see what I wanted to do before I went in and tried to just solve the problem without having a good direction. 


# What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
# I kept it as a string for my refactoring, and the only different method I used was .insert to just put a comma into the string without having to switch it to an array.


# How did you initially iterate through the data structure?
# Do you feel your refactored solution is more readable than your initial solution? Why?
# Well I used a while loop because I didn't want to look through each piece of the array. There was no need since it was a pattern of every 4 once you inserted the comma. I used methods I found on the docs for my initial solution, and I couldn't find any to really make it more shorthand, without going into using regular expressions. 