# REQUIRE database program
require 'sqlite3'

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
			SELECT * FROM restaurants WHERE name LIKE "#{name}%" ORDER BY name
		SQL
		) 
	print(search_result, "name")	
end

#search by cuisine method
def search_by_cuisine(database, cuisine)
	search_result = database.execute(<<-SQL 
			SELECT * FROM restaurants WHERE cuisine LIKE "#{cuisine}%" ORDER BY name
		SQL
		) 
	print(search_result, "cuisine")
end

# search by price method
def search_by_price(database, price)
	search_result = database.execute(<<-SQL 
			SELECT * FROM restaurants WHERE price<= "#{price}" ORDER BY price
		SQL
		) 
	print(search_result, "price")
end

# print result method
def print(result, search_by=0)
	title_messages(search_by)
	puts ("<<" + ("-" * 20) + ">>").center(60)
	puts "name".upcase.center(25) + "cuisine".upcase.center(15) + "price".upcase.rjust(15)
	puts "-" * 60 	
	result.each do |restaurant|
			# p restaurant
			puts "#{restaurant["name"].ljust(25)} #{restaurant["cuisine"].ljust(20)} $ #{restaurant["price"]}.00 \n\n"
		end
	result
end

def print_single_result(database, name, action)
	single_result = database.execute(<<-SQL 
			SELECT * FROM restaurants WHERE name="#{name}"
		SQL
		) 
	print(single_result, action)
end

def title_messages(action=0)
	options = ["name", "cuisine", "price"]
	if options.include?(action)
		puts "favorite restaurants by #{action}".upcase.center(60)
	elsif action == "add"
		puts "your newly added restaurant".upcase.center(60)
	elsif action == "update"
		puts "your updated restaurant".upcase.center(60)
	else
		puts "favorite restaurants".upcase.center(60)
	end
end


# print entire database method
def print_list(database)
	full_database = database.execute("SELECT * FROM restaurants ORDER BY name")
	print(full_database)
	database
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



# TEST

# welcome_message
# goodbye_message


# user_manager(restaurant_database)
# print_list(restaurant_database)
# user_search(restaurant_database)
# launch(restaurant_database)








