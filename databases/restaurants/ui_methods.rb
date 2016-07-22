# running program method
def launch(database)
	welcome_message
	loop do 
		puts "Would you like to manage, search or print your favorite restaurants? (Type 'manage', 'search','print' or 'exit' to quit)"
		action = gets.chomp.downcase
		break if action == "exit" 
		if action == "manage"
			user_manager(database)
		elsif action == "search"
			user_search(database)
		elsif action == "print"
				print_list(database)
		end
	end
	goodbye_message
end

#welcome message method
def welcome_message
	puts "Welcome to the restaurant finder!".upcase.center(120)
	puts (("-" * 120) + "\n\n").center(120)
end

#goodbye message method
def goodbye_message
	puts ("-" * 120).center(120)
	puts "thank you for using the restaurant finder!".upcase.center(120)
	puts "enjoy your favorite restaurant!".upcase.center(120)
end

# method to allow user to manage database
def user_manager(database)
	puts "Would you like to add, update or delete a restaurant? (Please type 'add', 'update', 'delete')"
	manage_action = gets.chomp.downcase
	if manage_action == "add"
		user_add(database)
	elsif manage_action == "update"
		user_update(database)
	elsif manage_action == "delete"
		user_delete(database)
	end
end

# method to allow user to search database
def user_search(database)
	puts "Would you like to search by name, cuisine or price?(Please type 'name', 'cuisine' or 'price')"
	search_action = gets.chomp.downcase
	if search_action == "name"
		puts "What is the name of the restaurant you want to find? (Type the beginning few letters)"
		name_search = gets.chomp
		search_by_name(database, name_search)	
	elsif search_action == "cuisine"
		puts "Which cuisine would you like to find? (Type the beginning few letters)"
		cuisine_search = gets.chomp
		search_by_cuisine(database, cuisine_search)
	elsif search_action == "price"
		puts "Find a restaurant under your given price. How much are you willing to spend?"
		price_search = gets.chomp.to_i
		search_by_price(database, price_search)
	end
end

# method to allow user to add new restaurant to database
def user_add(database)
	# get user input
	puts "What is the name of the new restaurant?"
	new_restaurant_name = gets.chomp
	
	puts "What is the cuisine?"
	new_restaurant_cuisine = gets.chomp
	
	puts "What is the average price of a meal?"
	new_restaurant_price = gets.chomp.to_i
	# run business logic
	add(database, new_restaurant_name, new_restaurant_cuisine, new_restaurant_price)
	print_single_result(database, new_restaurant_name, "add")
end

# method to allow user to update restaurants in database
def user_update(database)
	# get user input
	puts "Which restaurant would you like to update?"
	restaurant_to_update = gets.chomp
	
	puts "Would you like to update the name, cuisine or price?"
	catagory_update = gets.chomp
	
	puts "Please type in the update."
	updated_info = gets.chomp
	if updated_info.is_a?(Integer)
				updated_info.to_i
	end
	# run business logic
	update(database, restaurant_to_update, catagory_update, updated_info)
	if catagory_update == "name"
		print_single_result(database, updated_info, "update")
	else
		print_single_result(database, restaurant_to_update, "update")
	end
end

# method to allow user to delete restaurants in database
def user_delete(database)
	puts "Which restaurant would you like to delete?(Please type in the name of restaurant)"
	delete_restaurant_name = gets.chomp
	# run business logic		
	delete(database, delete_restaurant_name)
	puts "--#{delete_restaurant_name} has been removed from your favorite restaurant list.--\n\n".upcase
end
