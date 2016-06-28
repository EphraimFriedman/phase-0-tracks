# # Method to create a list
# # input: string of items separated by spaces (example: "carrots apples cereal pizza")
# # steps: 
#   # change string into an hash
#   # set default quantity to 1
#   # print the list to the console [can you use one of your other methods here?]
# # output: [what data type goes here, array or hash?]


# # Method to add an item to a list
# # input: item name and optional quantity
# # steps:
#     add item to hash
# # output:
#     hash 

# # Method to remove an item from the list
# # input: the item to be removed
# # steps: find the item in the hash 
#     remove item
# # output: 
#     hash

# # Method to update the quantity of an item
# # input: the item name and an integer
# # steps: find the item in the hash
#       revalue the item to new value
# # output:
#     hash

# # Method to print a list and make it look pretty
# # input: A list
# # steps: print a header
#     iterate through hash print keys and values
# # output:
#   a list in a sentence form

def create_list(list)
  shopping_list = {}
  grocery_array = list.split(" ")
  quantity = 1
  grocery_array.map do |item|
    shopping_list[item] = quantity
  end
  print_list(shopping_list)
  shopping_list
end

def add_item(list, item_name, quantity = 1)
  list[item_name] = quantity 
  list
end

def remove_item(list, item_name)
  list.delete(item_name)
  list
end

def update_quantity(list, item_name, quantity)
  list[item_name] = quantity
  list
end

def print_list(list)
  puts "*Shopping List*"
  puts "----------"
  list.each do |item, qty|
    puts "* #{item}: #{qty}"
  end
  puts "----------"
  list
end


# Driver Code

# groceries = "carrots apples cereal pizza" 
 
# grocery_list = create_list(groceries)

# p grocery_list

# p add_item(grocery_list, "oranges")

# p remove_item(grocery_list, "apples")

# p update_quantity(grocery_list, "carrots", 5)

# print_list(grocery_list)

# Test
 
grocery_list = create_list("carrots apples cereal pizza")

p add_item(grocery_list, "Lemonade", 2)

p add_item(grocery_list, "Tomatoes", 3)

p add_item(grocery_list, "Onions", 1)

p add_item(grocery_list, "Ice Cream", 4)

p remove_item(grocery_list, "Lemonade")

p update_quantity(grocery_list, "Ice Cream", 1)

print_list(grocery_list)





















