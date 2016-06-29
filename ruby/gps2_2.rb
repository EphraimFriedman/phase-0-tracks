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
  grocery_array.map do |item|
    shopping_list[item] = 1
  end
  print_list(shopping_list)
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
 
grocery_list = create_list("carrots apples cereal pizza")

add_item(grocery_list, "Lemonade", 2)

add_item(grocery_list, "Tomatoes", 3)

add_item(grocery_list, "Onions", 1)

add_item(grocery_list, "Ice Cream", 4)

remove_item(grocery_list, "Lemonade")

update_quantity(grocery_list, "Ice Cream", 1)

print_list(grocery_list)

# Reflect 

# What did you learn about pseudocode from working on this challenge?
 
  # That it is really very important. I should have the steps clear for what I need to do so that way the code itself is better and it's quicker. 
  # Unfortunately I wasted a lot of time because of lack of pseudocoding.

# What are the tradeoffs of using arrays and hashes for this challenge?

  # I liked using a hash so each item (key) had a value, and it can be changed. An array wouldn't let us just change the quantity. 
  # We used an array to split the string, because an array is easier to manipulate over a string.

# What does a method return?
  
  # The last value of the method. That is why we put the list at the end of the methods.

# What kind of things can you pass into methods as arguments?

  # Methods themselves and strings, integers and variables.

# How can you pass information between methods?
  
  # By feeding them into as an argument.

# What concepts were solidified in this challenge, and what concepts are still confusing?
  
  # I solidified how to write methods and the importance of their return value (not putting a puts at the end)
  # And the importance of psedocoding.
  # I still find passing information around to methods a bit confusing.






















