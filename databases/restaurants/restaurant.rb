# REQUIRE database program
require 'sqlite3'

# create database
restaurant_database = SQLite3::Database.new("restaurants.db")
restaurant_database.results_as_hash = true
# create table 
create_table = <<-SQL 
	CREATE TABLE IF NOT EXISTS restaurants (
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		cuisine VARCHAR(255),
		price INTEGER
	)
SQL
restaurant_database.execute(create_table)

# add restaurant method
def add(database, name, cuisine, price)
	database.execute("INSERT INTO restaurants (name, cuisine, price) VALUES (?,?,?)", [name, cuisine, price])
end

# delete restaurant method
def delete(database, name)
	database.execute(<<-SQL 
			DELETE FROM restaurants WHERE name="#{name}"
		SQL
		)
end

# update restaurant method
def update(database, current_name, catagory, update_info)
	database.execute(<<-SQL 
		UPDATE restaurants SET "#{catagory}"="#{update_info}" WHERE name="#{current_name}" 
		SQL
		)	
end

# search by name method
def search_by_name(database, name)
	search_result = database.execute(<<-SQL 
			SELECT * FROM restaurants WHERE name LIKE "#{name}%"
		SQL
		) 
	print(search_result, "name")	
end

#search by cuisine method
def search_by_cuisine(database, cuisine)
	search_result = database.execute(<<-SQL 
			SELECT * FROM restaurants WHERE cuisine LIKE "#{cuisine}%"
		SQL
		) 
	print(search_result, "cuisine")
end

# search by price method
def search_by_price(database, price)
	search_result = database.execute(<<-SQL 
			SELECT * FROM restaurants WHERE price< "#{price}"
		SQL
		) 
	print(search_result, "price")
end

# print result method
def print(result, search_by=0)
	options = ["name", "cuisine", "price"]
	if options.include?(search_by)
		puts "favorite restaurants by #{search_by}".upcase.center(60)
		else
		puts "favorite restaurants".upcase.center(60)
	end
	puts ("<<" + ("-" * 20) + ">>").center(60)
	puts "name".upcase.center(25) + "cuisine".upcase.center(15) + "price".upcase.rjust(15)
	puts "-" * 60 	
	result.each do |restaurant|
			# p restaurant
			puts "#{restaurant["name"].ljust(25)} #{restaurant["cuisine"].ljust(20)} $ #{restaurant["price"]}.00 \n\n"
		end
end

# print entire database method
def print_list(database)
	full_database = database.execute("SELECT * FROM restaurants")
	print(full_database)
end



# # DRIVER CODE
# # search_result = nil
# add(restaurant_database, "Kingston Pizza", "fast food", 5)
# add(restaurant_database, "Basil", "French", 30)
# # delete(restaurant_database, "Basil")
# # # update(restaurant_database, "Kingston Pizza", "price", 7)
# # # update(restaurant_database, "Kingston Pizza", "name", "King")

# search_by_name(restaurant_database, "Bas")


# search_by_cuisine(restaurant_database, "fas")

# search_by_price(restaurant_database, 20)

# print_list(restaurant_database)
#-------------------------------------------------------------------------

#welcome message method
def welcome_message
	puts "Welcome to the restaurant finder!".upcase.center(80)
	puts ("-" * 40).center(80)
end

#goodbye message method

def goodbye_message
	puts ("-" * 50).center(80)
	puts "thank you for using the restaurant finder!".upcase.center(80)
	puts "enjoy your favorite restaurant!".upcase.center(80)
end



# puts "Would you like to manage, search or print your favorite restaurants? (Please type manage, search or print)"

# action = gets.chomp.downcase


def user_manager(database)
	puts "Would you like to add, update or delete a restaurant? (Please type 'add', 'update', 'delete')"
	manage_action = gets.chomp.downcase
	if manage_action == "add"
		puts "What is the name of the new restaurant?"
		new_restaurant_name = gets.chomp
		puts "What is the cuisine?"
		new_restaurant_cuisine = gets.chomp
		puts "What is the average price of a meal?"
		new_restaurant_price = gets.chomp.to_i

		add(database, new_restaurant_name, new_restaurant_cuisine, new_restaurant_price)
		puts "your newly added restaurant is: \n\n".upcase.center(60)
		search_by_name(database, new_restaurant_name)
	
	elsif manage_action == "update"
		puts "Which restaurant would you like to update?"
		restaurant_to_update = gets.chomp
		puts "Would you like to update the name, cuisine or price?"
		catagory_update = gets.chomp
		puts "Please type in the update."
		updated_info = gets.chomp
			if updated_info.is_a?(Integer)
				updated_info.to_i
			end

		update(database, restaurant_to_update, catagory_update, updated_info)
		puts "your updated restaurant is: \n\n".upcase.center(60)
			if catagory_update == "name"
				search_by_name(database, updated_info)
			else
				search_by_name(database, restaurant_to_update)
			end

		elsif manage_action == "delete"
			puts "Which restaurant would you like to delete?(Please type in the name of restaurant)"
			delete_restaurant_name = gets.chomp
			
			delete(database, delete_restaurant_name)
			puts "#{delete_restaurant_name} has been removed from your favorite restaurant list.".upcase
	end
end


def user_search
	
end



# TEST

# welcome_message
# goodbye_message


user_manager(restaurant_database)
# print_list(restaurant_database)









