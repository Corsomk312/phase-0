# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)
  i = 0
  combo_array = []

  if (array_2.length == 0) && (array_1.length == 0)
  	return combo_array
  else 
  	while  i < array_1.length
  		combo_array << array_1[i]
  		i += 1
  	end
  	i = 0
  	while i < array_2.length
  		combo_array << array_2[i]
  		i += 1
  	end
  	return combo_array
  end
end