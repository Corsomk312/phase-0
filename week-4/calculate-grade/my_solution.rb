# Calculate a Grade

# I worked on this challenge [with: Armani Saldana].


# Your Solution Below

def get_grade(grade)
  if grade >= 90
    return "A"
  elsif grade >= 80
    return "B"
  elsif grade >= 70
    return "C"
  elsif grade >= 60
    return "D"
  else 
    return "F"
  end
end

get_grade(95)
get_grade(45)
get_grade(74)

#print the grade as a string