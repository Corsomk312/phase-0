# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 1
#
p array[1][1][2][0]

#===========================================================



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:2 
#p hash[outer:][inner:]["almost"][3]

p hash[:outer][:inner]["almost"][3]

#============================================================



# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
p nested_data[:array][1][:hash]

# ============================================================



# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |e|
  if e.kind_of?(Array)
    e.map! {|inner| p inner += 5}
  else p e += 5
  end
end
p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

def recursive_method(array)
  array.map! do |e|
    if e.kind_of?(Array)
      recursive_method(e)
    else e << "ly"
    end
  end
end

recursive_method(startup_names)
p startup_names