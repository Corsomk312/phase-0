# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  i = 0
  shortest = list_of_words[0]

  if list_of_words.length == 0
  	return nil
  else
  	while i < list_of_words.length
  		item = list_of_words[i]
  		if item.length < shortest.length
  			shortest = list_of_words[i]
  		end
  		i += 1
  	end
  end
  return shortest
end