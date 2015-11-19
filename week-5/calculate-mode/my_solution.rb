# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? The input is going to be an array of integers
# What is the output? (i.e. What should the code return?) Output will be an array of the integers that appear most often. Will output more than one integer if they appear the same amount.
# What are the steps needed to solve the problem?
#First we need to determine how many unique values there are in the array, and then we need to figure out how many instances of that variable are in the array. Then we need to compare the amount of times each variable occurs with the other ones. 

#We will then have to return an array with the values of the most common integer.


# 1. Initial Solution
# def find_mode(array)
# 	how_many = []
# 	final_array = [] 
# 	solo_array = array.uniq
# 	j=0 

# 	solo_array.each do |i|
# 		how_many[j] = array.count(i)
# 		j += 1
# 	end

# 	k = 0

# 	how_many.each do |i|
# 		if i == how_many.max
# 			final_array[k] = solo_array(k) 
# 			k += 1
# 		end
# 	end

# 	return final_array
# end

# find_mode([1,3,3,55,54])


# 3. Refactored Solution

def mode(array)
  new_hash = Hash.new(0)
  output = []
  
  array.each do |i|
   new_hash[i] += 1
  end
  
  new_hash.each do |i, j| 
    if new_hash.values.max == j
      output << i
    end
  end
  output
end

# mode([5,5,5,6,7,6,6, 8, 8, 8])


# 4. Reflection
# Which data structure did you and your pair decide to implement and why?
#First try I thought I could figure it out with just arrays, and that ended up becoming way too complex. It suddenly clicked that I could use the value of a hash as my counter while having the key be the number itself.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
#I couldn't find a pair for this exercise, but psuedocode is definitely helpful. 

# What issues/successes did you run into when translating your pseudocode to code?
#Well as I said I tried to do the whole thing with arrays and that just got too convaluted too quickly. I knew exactly what I wanted to do, but didn't realize there was an easier way to do it.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
#I used .each to iterate through the array and hash. I found the method .values to find just the values was crucial to the success of my method. Without it the code would have become much more complex. They weren't particularly difficult to implement, as I've done .each on a few challenges before this.