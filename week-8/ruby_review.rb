# OO Basics: Student


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode

# Create a class requiring a first_name and an array of 5 scores for each Student. Create an array with 5 students after you define them. Create a class method for averaging the scores. 

# Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)   #Use named arguments!
    @first_name = first_name
    @scores = scores
   
 	 unless @scores.length === 5
 	 	raise ArgumentError.new("Please include 5 grades for your student")
 	 end
  end

  def average()
  	sum = @scores.inject{|sum, i| sum + i}
  	@avg = sum/@scores.length
  end

  def letter_grade()
  	case @avg
  	when 90...100
  		grade = "A"
  	when 80...89
  		grade = "B"
  	when 70...79
  		grade = "C"
  	when 60...69
  		grade = "D"
  	else
  		grade = "F"
  	end
  end



end

def linear_search(student_array, name)
  		student_array.each do |student|
  			 if student.first_name === name
  				return student_array.index(student)
  				break
  			end	
  		end  
  		return -1	
end

def binary_search(array, name, beg=0, finale=nil)
  if finale == nil #calling method with nil, and assigning it a real value once it is known what we want the integer to be. 
    finale = array.length - 1
  end

  if array[0].is_a?(Student)#creating an array of students first names, so they can be compared in the binary search.
    new_array = []
    array.each do |stu|
      new_array.push(stu.first_name)
    end
  end
 

  mid = (beg + finale)/2
  
  if name > new_array[mid]
    mid += 1

    return binary_search new_array, name, mid, finale#returning the method with the 'beg' argument as our middle + 1, since we determined it is in a position past the middle.
  elsif name < new_array[mid]
    mid -= 1
    return binary_search new_array, name, beg, mid
  else
    p mid
  end



   
end








# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE

alex = Student.new("Alex", [100,100,100,0,100])
sean = Student.new("Sean", [89,88,87,86,85])
stephen = Student.new("Stephen", [69,96,69,96,69])
sarah = Student.new("Sarah", [88,90,92,94,96])
shawn = Student.new("Shawn", [100,99,98,97,69])

students = [alex, sean, stephen, sarah, shawn]


binary_search(students, "Alex")
# Initial Tests:


# p students[0].first_name == "Alex"
# p students[0].scores.length == 5
# p students[0].scores[0] == students[0].scores[4]
# p students[0].scores[3] == 0


# # # Additional Tests 1:

# p students[0].average == 80
# p students[0].letter_grade == 'B'

# # # Additional Tests 2:

# p linear_search(students, "Alex") == 0
# p linear_search(students, "NOT A STUDENT") == -1





# Reflection