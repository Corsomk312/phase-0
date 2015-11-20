#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

class NameData

  attr_reader :name

  def initialize
    @name = "Kevin"
  end
end


class Greetings

  def initialize
    @new_name = (NameData.new)
    @myself = (@new_name.name)
  end

  def hello
    puts "Hello #{@myself}, how wonderful to see you today!"
  end

end

greet = Greetings.new
greet.hello


# Reflection

# Release 1

# What are these methods doing?

# These methods are taking instance variables and manipulating the information within them from inside the class. It's using the long-hand for reader/writer attr methods.

# How are they modifying or returning the value of instance variables?
# They are building methods where you have either returned the instance variable or modified it. there is a lot of repeated code here, and it doesn't look fluid, but it gets the job done.

# Release 2

# What changed between the last release and this release?

# We added in the attr_reader for the instance variable @age.

# What was replaced?

# The chunk of code that told us to return the @age variable.

# Is this code simpler than the last?

# It is simpler. It condensed 3 lines of code into one!

# Release 3

# What changed between the last release and this release?

# We included the arrt_writer method for age as well as kept the attr_reader

# What was replaced?

# We replaced the long hand code to change and return the instance variable to a new value.

# Is this code simpler than the last?

# Very much so! We're now down 6 lines from the last release.

Final Release

What is a reader method?

A reader method is a method that allows you to call a short method defining an instance variable within a certain class without having to write out the method for yourself.

What is a writer method?

A writer method is a method that allows you to make changes to an instance variable with a certain class without having to write the method yourself.

What do the attr methods do for you?

They allow you to clean up your code and not have fairly repititious code, especially if you're dealing with multiple instance variables. They allow you to call the variable and make changes to a variable when you call the different methods.

Should you always use an accessor to cover your bases? Why or Why not?

As a blind guess I'm going to say that it is not always necessary. It would be a good habit of pseudocoding to check to see if your classes are going to need to have their variables called/changed. 

What is confusing to you about these methods?

I understand how they work, but I am still slightly confused about the classes interacting with each other. It took me awhile to figure out I only had to use the class name once and then use the variable I created the instance of that class in to call on the .name method. I was printing out "NameData" for so long I was thinking of just changing my own name.