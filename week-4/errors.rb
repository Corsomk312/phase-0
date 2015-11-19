# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#    errors.rb
# 2. What is the line number where the error occurs?
# => The error message read line 170, but the actual error was on line 16
# 3. What is the type of error message?
# => Syntax Error
# 4. What additional information does the interpreter provide about this type of error?
# => Unexpected end of input - expecting keyword_end
# 5. Where is the error in the code?
# => It is in the fact that the interperter was looking for an end to the loop and couldn't find one.
# 6. Why did the interpreter give you this error?
# => It gave this error because there was a while loop that didn't end, which might be an infinite loop? I'm not sure I haven't learned that yet, but it was missing the end of the while loop.

# --- error -------------------------------------------------------

south_park = "Great show"

# 1. What is the line number where the error occurs?
# => 36
# 2. What is the type of error message?
# => Name Error
# 3. What additional information does the interpreter provide about this type of error?
# => It tells us there is an undefined local variable or method 'south_park' for Main:Object
# 4. Where is the error in the code?
# => this is an undefined variable. It has no value or definition of what it is to be. It could be a variable or a method
# 5. Why did the interpreter give you this error?
# => It gave me this error because it was looking for the value of the object/method above and it could not find one because one was not provided.

# --- error -------------------------------------------------------

def cartman(nothing)
end

# 1. What is the line number where the error occurs?
# => 51
# 2. What is the type of error message?
# => No Method Error (sounds like a band)
# 3. What additional information does the interpreter provide about this type of error?
# => there is an undefined method 'cartman' for main:object
# 4. Where is the error in the code?
# => The method has not been defined.
# 5. Why did the interpreter give you this error?
# => It gave us this error because this is attempting to be a method, but it is not specifically defined as one. 

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase

# 1. What is the line number where the error occurs?
# => 71
# 2. What is the type of error message?
# => Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments <1 for 0>
# 4. Where is the error in the code?
# => in line 71 we put an argument into the method when there are no variables provided when the method was defined.
# 5. Why did the interpreter give you this error?
# => The code is trying to add an argument where there is no space for one.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("I would put something offensive but this is a school project")

# 1. What is the line number where the error occurs?
# => 90
# 2. What is the type of error message?
# => Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments <0 for 1>
# 4. Where is the error in the code?
# => There error is when we try to call the method, we do not include an argument within the method. 
# 5. Why did the interpreter give you this error?
# => It gave us this error because we are trying to call a method without an argument. So when this method is called it has no string to put onto the screen because we did not include it.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Kyle!')

# 1. What is the line number where the error occurs?
# => 107
# 2. What is the type of error message?
# => Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# => Wrong number of arguments <1 for 2>
# 4. Where is the error in the code?
# => We have not included the right number of arguments. 
# 5. Why did the interpreter give you this error?
# => It gave us the error because we included the lie variable but not the name variable

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# => 126
# 2. What is the type of error message?
# => Type Error
# 3. What additional information does the interpreter provide about this type of error?
# => String can't be coerced into Fixnum
# 4. Where is the error in the code?
# => We are defining 5 as an object and 'Respect my authoritay' as a method. 
# 5. Why did the interpreter give you this error?
# => You can't have 5 a Respect my authoritay amount of times. We have reversed the order.

# --- error -------------------------------------------------------

amount_of_kfc_left = 0


# 1. What is the line number where the error occurs?
# => 141
# 2. What is the type of error message?
# => Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
# => divided by 0
# 4. Where is the error in the code?
# => We divided by 0
# 5. Why did the interpreter give you this error?
# => Because you can't divide anything by zero. Even a computer knows that!

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => 157
# 2. What is the type of error message?
# => Load Error
# 3. What additional information does the interpreter provide about this type of error?
# => Cannot load such file
# 4. Where is the error in the code?
# => We are requiring a relative that doesn't exist.
# 5. Why did the interpreter give you this error?
# => This file doesn't exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#Which error was the most difficult to read?
#I think the first one threw me off the most. Just with having the wrong line number. It has definitely made me very wary of loops now though. I feel like the rest were very straightforward, telling me almost exactly what went wrong.

#How did you figure out what the issue with the error was?
#	I looked at the error message, and then I looked at the code objectively to see if I could spot anything that was wrong with it. It really helped to have the error type pop up and let me know if it was an argument or undefined method. 


#Were you able to determine why each error message happened based on the code? 
#	Yes I was!


#When you encounter errors in your future code, what process will you follow to help you debug?
#	I will take a look at the errors, and then look through the code, looking at everything not just exactly what the error told me to look for. I am sure I will also be googling a lot of things as well.

