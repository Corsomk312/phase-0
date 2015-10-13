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





acct_grps(["Caroline Artz","Syema Ailia","Kris Bies","Alex Blair","Andrew Blum","Jacob Boer","Alex Botsford","Laura C.","Danielle Cameron","Celeste Carter","Eran Chazan","Jonathan Chen","Un Choi","Kevin Corso","John D.","Eunice Do","Emmanuel Kaunitz","John Paul Chaufan Field","Eric Freeburg","Jeffrey George","Jamar Gibbs","Paul Gaston Gouron","Gabrielle Gustilo","Adell H.","Noah Heinrich","Jack Huang","Max Iniguez","Mark Janzer","Michael Jasinski","Lars Johnson","Joshua Kim","JAMES KIRKPATRICK","Christopher Lee","Isaac Lee","Charlotte Manetta","Kevin Mark","Bernadette Masciocchi","Lorena Mesa","Neal Peters","Morgan O.","John Polhill","Jeremy Powell","Armando R.","David Roberts","Gary S.","Parminder Singh","Kyle Smith","Aaron Tsai","Douglas Tsui","Deanna Warren","Peter Wiebe","Daniel Woznicki","Caitlyn Y.", "Nicole Yee", "Bruno Zatta"])