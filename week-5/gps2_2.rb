# Method 1 - Create Grocery List
# 	#Create and return an empty hash
def create_list
	Hash.new
end



# Method 2 - Add item with a quantity to list
# 	#Input of an item (string), quantity (integer), list
# 	#	Add our item and quantity into our hash
# 	#	print out item and quantity added to list
def add_item(item, quantity, list)
	list[item] = quantity
	puts "You have added #{item} with a quantity of #{quantity} to #{list['name']}."
end


# Method 3 - remove item from list
# 	#Input of item to be removed, list item is in.
# 	#	remove item and quantity from list
# 	#	print out item has been removed
def remove_item(item, list)
	list.delete(item)
	puts "#{item} has been removed from #{list['name']}."
end


# Method 4 - Update quantities in list
# 	#Input of item to be updated, new quantity, list item is in
# 	#	locate and change quantity of the item
# 	#	print out item and new quantity
def update_quantity(item, quantity, list)
	list[item] = quantity
	puts "Updated #{item} to now buy #{quantity}."
end


# Method 5 - Print the list
# 	Input of list
# 		print each item in the list


my_list = create_list
my_list['name'] = 'my_list'
add_item("banana", 4, my_list)
add_item("peaches", 3, my_list)
p my_list
remove_item("banana", my_list)
p my_list
update_quantity("peaches", 7, my_list)
p my_list

