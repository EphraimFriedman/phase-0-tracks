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

# def change_client_data_types(client_info)
#   client_info.each do |category, response|
#     if [:age, :number_of_children].include?(category)
#       client_info[category] = response.to_i
#     elsif [:lives_in_ny].include?(category)
#       client_info[category] = response == 'yes'
#     end      
#   end  
# end

# A method to convert all date for this assignment into proper data types.
# Discussed this method with Andrew Larson. Tried to figure out a way to change the data type after user edits information the second time. 
def correct_clients_data_type(data_structure)
	# loop each key
	data_structure.each do |key, response| 
	# if the key is age or children
		if [:age, :number_of_children].include?(key)
		# change value to interger type	
			data_structure[key] = response.to_i	
	# 	elsif key is lives in NY
		elsif [:lives_in_ny].include?(key)
			# change value to true if value is yes
			data_structure[key] = response == "yes"
		end
	end
		
end

# create empty hash
client_information = {}
# get information from client
# 	1. clent's name
puts "what is your name?"
	client_information[:name] = gets.chomp
# 	2. age
puts "How old are you?"
	client_information[:age] = gets.chomp #to_i

# 	3. number of children
puts "How many children do you have?"
	client_information[:number_of_children] = gets.chomp #to_i
# 	4. decor theme
puts "What is the theme of your decor?"
	client_information[:decor_theme] = gets.chomp

# 	5. Do you live in NY?
puts "Do you live in New York City?"
	client_information[:lives_in_ny] = gets.chomp #== "yes"
# print hash
# p client_information

p correct_clients_data_type(client_information)


# Which key would you like to correct? type 'none' if all are correct.
puts "Which key would you like to edit? (type 'none' if all is correct)"
# get user information
new_key = gets.chomp
# 	if user input is equal to 'none' break out of  if
	if new_key == "none"
# 	else
	else
# 		change user string to symbols
		new_key = new_key.to_sym 
# 		ask what the change is
		puts "what is your change?"
# 		get information
		user_change = gets.chomp
# 		add information to hash
		client_information[new_key] = user_change
# 	end
	end
# print new hash
puts "This is the latest hash #{correct_clients_data_type(client_information)}"
puts "Thank you for entering the correct information."