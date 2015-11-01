#PseudoCode

# Input - array of people who are in my cohort.
# Output - groups of 4-5 and at least 3 students
# Steps - Cycle through and put people into different groups one at a time. Figure out how many groups you will need, and place people in them one by one.
#MVP will look like a list of all the people telling which cohort they are in. 




def acct_grps(array)
	array_hash = Hash.new

	j=1
	array.each do |i|
		if j <= (array.length/4)
			array_hash[i] = j
			j += 1 
		else 
			j = 1
			array_hash[i] = j
			j += 1
		end
	end
	array_hash.each do |key, value|
		puts "#{key} : #{value}"
	end
end




	# while i <= (array.length/4)
	# 	array_hash[i] = 
	# 	i+=1
	# end
	# i = 1
	# array.each do |j|
	# 	if i <= (array.length/4)
	# 		j << accountability_group_i
	# 		i += 1
	# 	else
	# 		i = 1
	# 		j << accountability_group_i
	# 		i += 1
	# 	end
	# end
	# puts accountability_group_3


# What was the most interesting and most difficult part of this challenge?

# The most interesting part was trying to find a way to get the groups to be at least 3 people. I also thought that was the most challenging part of the challenge was as well.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?

# 	I think so. Psuedocoding helps me to see that the steps I need to don't have to be super challenging if I just break them down to smaller, much more manageable steps.

# Was your approach for automating this task a good solution? What could have made it even better?

# 	My first approach was to try and create a new accountability group array every 4th person, but that ended up not working so well for me. I then thought that I could create a hash, using the key as the name and the value as the group number. I felt that this was a good way to do it. From there you could group the keys together based on value, and break them out even farther. 

# What data structure did you decide to store the accountability groups in and why?

# 	I used Hash, because you needed 2 pieces of information per person, and a hash conveniently stores 2 pieces of information for you. I felt it was a good fit. 

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

# 	I didn't use any new Ruby methods in my refactoring, but it definitely helped me to become a lot more confident in iterating through more information. 


acct_grps(["Caroline Artz","Syema Ailia","Kris Bies","Alex Blair","Andrew Blum","Jacob Boer","Alex Botsford","Laura C.","Danielle Cameron","Celeste Carter","Eran Chazan","Jonathan Chen","Un Choi","Kevin Corso","John D.","Eunice Do","Emmanuel Kaunitz","John Paul Chaufan Field","Eric Freeburg","Jeffrey George","Jamar Gibbs","Paul Gaston Gouron","Gabrielle Gustilo","Adell H.","Noah Heinrich","Jack Huang","Max Iniguez","Mark Janzer","Michael Jasinski","Lars Johnson","Joshua Kim","JAMES KIRKPATRICK","Christopher Lee","Isaac Lee","Charlotte Manetta","Kevin Mark","Bernadette Masciocchi","Lorena Mesa","Neal Peters","Morgan O.","John Polhill","Jeremy Powell","Armando R.","David Roberts","Gary S.","Parminder Singh","Kyle Smith","Aaron Tsai","Douglas Tsui","Deanna Warren","Peter Wiebe","Daniel Woznicki","Caitlyn Y.", "Nicole Yee", "Bruno Zatta"])