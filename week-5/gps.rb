
# PSEUDOCODE
# create new list
# create a hash
# input: create new list
# output: new list

# add item w/ quantity
# input: we pass to hash a string w/ assigned integer 
# output: updated list with new string + integer key pair

# remove an item
# input: item we desire deleted
# output: updated list w/ removed item

# update quantity
# input: add string w/ integer that matches an existing pair in list
# output: updated list w/ new values

# print list
# input: iterate over list to print out each value
# output: a list that specifies items w/ associated values

def new_list
  Hash.new
#   list["juice"]=2
end

# p list

def add_item(item, value, list)
  if list.include?(item)
    puts "Nice try, this item is already on the list!"
  else
    list[item] = value
  end
end 

def remove_list_item(item, list)
  if list.has_key?(item)
    list.delete(item)
  else 
    puts "You need to add this item before you can remove it!"
  end
end

def update_quantity(item, value, list)
  if list.has_key?(item)
    list.update(item => value)
  else
    puts "Sorry that item is not on your list yet! Please add before updating"
  end
end

def print_list(list)
  puts "This is your grocery list:"
  list.each do |item, value|
    puts" #{item}: #{value}"
  end
end 

my_list = new_list
# my_list = Hash.new

add_item("Lemonade", 2, my_list)
add_item("Lemonade", 3, my_list)
add_item("Onions", 1, my_list)
add_item("Ice Cream", 4, my_list)

# remove_list_item("Lemonade", my_list)

update_quantity("Lemonade", 1, my_list)

print_list(my_list)




# add_item("peanut butter", 6)