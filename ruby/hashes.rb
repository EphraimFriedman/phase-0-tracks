# # In phase-0-tracks/ruby/hashes.rb, pseudocode and write a program that
#  will allow an interior designer to enter the details of a given 
#  client: the client's name, age, number of children, decor theme,
#   and so on (you can choose your own as long as it's a good mix of 
#string,
#    integer, and boolean data).

# # Your keys should be symbols unless you find that you need a string 
# for some reason -- usually only when spaces or other "user friendly" 
# 	formatting are needed (as in the case of using someone's full name
# 	 as a hash key). Basically, symbols are simpler for programmers to
# 	  use, and readable enough by technical folks to be used in place 
# 	  of strings most of the time.

# # Your program should ...

# # Prompt the designer/user for all of this information.
# # Convert any user input to the appropriate data type.
# # Print the hash back out to the screen when the designer has answered 
# all of the questions.
# # Give the user the opportunity to update a key (no need to loop, 
# once is fine). After all, sometimes users make mistakes! If the designer
# says "none", skip it. But if the designer enters "decor_theme" 
# (for example), your program should ask for a new value
#  and update the :decor_theme key. 
#  (Hint: Strings have methods that will turn them into symbols,
#   which would be quite handy here.) You can assume the user will
#    correctly input a key that exists in your hash 
#    -- no need to handle user errors.
# # Print the latest version of the hash, and exit the program.

# create empty hash
client_information = {}
# get information from client
# 	1. clent's name
puts "what is your name?"
	client_information[:name] = gets.chomp
# 	2. age
puts "How old are you?"
	client_information[:age] = gets.to_i

# 	3. number of children
puts "How many children do you have?"
	client_information[:number_of_children] = gets.to_i
# 	4. decor theme
puts "What is the theme of your decor?"
	client_information[:decor_theme] = gets.chomp

# 	5. Do you live in NY?
puts "Do you live in New York City?"
	client_information[:lives_in_ny] = gets.chomp == "yes"
# print hash
p client_information




