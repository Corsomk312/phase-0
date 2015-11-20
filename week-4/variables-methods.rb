puts 'Hello! What is your first name, kind soul?'
first_name = gets.chomp
puts 'And your middle name, sweet child?'
middle_name = gets.chomp
puts 'And now for your last name, blessed munchkin?'
last_name = gets.chomp
puts 'So very pleased to meet you, ' + first_name + ' ' + middle_name + ' ' + last_name + '!'

puts 'Now, what is your favorite number?'
fav_num = gets.chomp
fav_num =  fav_num.to_i + 1
puts 'Why don\'t you try ' + fav_num.to_s + ' ? It\'s a bigger, and therefore, better number!'


#How do you define a local variable?

#Local variables are variables that are only available within a given method. They can not exist anywhere but that method.

#How do you define a method?

#A method is a block of code that accomplishes a certain goal. that being said, the range of what a method is is enormous. A method is "something that does stuff", or something along those lines as explained in our book. 

#What is the difference between a local variable and a method?

#A local variable lives within a method. In fact, the method is what that variable is local to. The method is the home. The method takes the variables and make them do stuff. It sounds vague, but the breadth of what a method can do is too large to be able to be specific.

#How do you run a ruby program from the command line?

#Use the command 'ruby program-name-here.rb'.

#How do you run an RSpec file from the command line?

#Use the command 'rspec rspec-file-name.rb'

#What was confusing about this material? What made sense?

#It was all pretty straightforward stuff. I think some of the spacing was tough, and just picking up on what methods did what. So far everything has been pretty clear for me, I had some problem with figuring out the rspec, but that was just me interpreting the instructions incorrectly. Ruby is operated by logic, so by definition the language itself makes sense. It is just that when we put one thing in the wrong place, then it becomes confusing.

#https://github.com/Corsomk312/phase-0/blob/master/week-4/math/my_solution.rb
#https://github.com/Corsomk312/phase-0/blob/master/week-4/address/my_solution.rb