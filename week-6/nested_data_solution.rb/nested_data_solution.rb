# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# p array[1][2][0]
p array[1][1][2][0]
# attempts: 2
#
# ============================================================



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# p hash[:outer][:inner]["almost"]["3"]
p hash[:outer][:inner]["almost"].values
# attempts:2
# ============================================================



# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# p nested_data[:array][1][:hash].values
p nested_data[:array][1][:hash]
# attempts:2
# ============================================================



# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

def enum_method

  number_array = [5, [10, 15], [20,25,30], 35]

  number_array.each do |element|
    if element.kind_of?(Array)
      element.each {|inner| p inner + 5}
    else
      p element + 5
    end
  end
end

enum_method

# Bonus:

def startups

  startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

  startup_names.each do |element|
    if element.kind_of?(String)
      p element
    else element.kind_of?(Array)
      element.each do |inner|
        unless inner.kind_of?(Array)
         p inner = inner + "ly"
          else inner.each {|nester| p nester}
         end
      end
  end
end
    
startups
  
  
#   unless element.kind_of?(Array)
#     p element
#   else
#     element.each do |inner|
#       p inner
#   end
#   end
# end

# Reflection

# What are some general rules you can apply to nested arrays?

# That they are tricky. First would be to make sure you don't get lost. Next is to make sure you are iterating over the inner arrays as well. 

# What are some ways you can iterate over nested arrays?
# 	You can use a test to see if an item within the array is an array while using the .each method. This only works for a 2 layered array. I couldn't get my finger on how to get the n-dimenensional array. I feel like I'm close I just don't quite have it.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

# I used kind_of? which was a new method for me. I was thinking about using case but I don't think that would be the logic required to solve my problem. 