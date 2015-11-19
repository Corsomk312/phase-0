# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].



# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Input is a series of numbers
# Output: Sum of all the numbers
# Steps to solve the problem.
	#Iterate through the array and add each number together until you are through the entire array.

# 1. total initial solution

def total(nums)
	total = 0

	nums.each do |i|
		total += i
	end
	return total
end




# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:array of individual strings
# Output: One grammatically correct string
# Steps to solve the problem.
	# iterate through the array. Capitalize the first word. Add each word to the string with a space in between, and end the sentence with a period.


# 5. sentence_maker initial solution
def sentence_maker(words)
	sentence = ''
	i = 0

	while i < words.length
		if i == 0 
			sentence = sentence + words[i].to_s.capitalize + ' '
			i += 1
		elsif i == (words.length - 1)
			sentence = sentence + words[i].to_s + '.'
			i += 1
		else
			sentence = sentence + words[i].to_s + ' '
			i += 1
		end
	end
	p sentence
end 

sentence_maker(["alaska", "has", "over", 586, "thousand", "miles"])


# 6. sentence_maker refactored solution
