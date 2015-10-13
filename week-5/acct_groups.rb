def acct_grps(array)
	array_hash = Hash.new

	j=1
	array.each do |i|
		if j <= (array.length/4)
			array_hash[i] = "Accountability Group: #{j}"
			j += 1 
		else 
			j = 1
			array_hash[i] = "Accountability Group: #{j}"
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
# I feel like the most difficult part for me was realizing to use a hash. I seem to think you can do the same things with arrays that you can with hashes, but i'm starting to see that you can really use a hash for a lot more things that you can an array.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# Yes I do. psuedocode allows me to take a look at the big picture and come up with a solution without worrying about code. It lets me solve the problem and then go back and see. I even had to re-psuedo code this one. I do it physically writing down notes, just helps me to keep things straighter. 

# Was your approach for automating this task a good solution? What could have made it even better?
# I think this was a pretty simple solution. It doesn't have much fat on it, just an if/else statement within a .each method. I do foresee problems with the code if you were to remove someone in the middle of the program, it would then push everyone down one. But for setting up accountability groups, nobody will have less than 4 and only a max of 3 groups will have 5.

# What data structure did you decide to store the accountability groups in and why?
# I used a hash because this allowed me to use the key to hold everyone's unique name, while using the value to place them into an accountability group up to however many I'd like. Plus since we only needed to store 2 pieces of information (name and acct. group) a hash seemed perfectly built to handle this.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
	#I used a couple methods in my intial solution and I couldn't find anything that would help shorten my code in the docs. 





acct_grps(["Caroline Artz","Syema Ailia","Kris Bies","Alex Blair","Andrew Blum","Jacob Boer","Alex Botsford","Laura C.","Danielle Cameron","Celeste Carter","Eran Chazan","Jonathan Chen","Un Choi","Kevin Corso","John D.","Eunice Do","Emmanuel Kaunitz","John Paul Chaufan Field","Eric Freeburg","Jeffrey George","Jamar Gibbs","Paul Gaston Gouron","Gabrielle Gustilo","Adell H.","Noah Heinrich","Jack Huang","Max Iniguez","Mark Janzer","Michael Jasinski","Lars Johnson","Joshua Kim","JAMES KIRKPATRICK","Christopher Lee","Isaac Lee","Charlotte Manetta","Kevin Mark","Bernadette Masciocchi","Lorena Mesa","Neal Peters","Morgan O.","John Polhill","Jeremy Powell","Armando R.","David Roberts","Gary S.","Parminder Singh","Kyle Smith","Aaron Tsai","Douglas Tsui","Deanna Warren","Peter Wiebe","Daniel Woznicki","Caitlyn Y.", "Nicole Yee", "Bruno Zatta"])