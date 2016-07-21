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

def search_by_name(database, name)
	search_result = database.execute(<<-SQL 
			SELECT * FROM restaurants WHERE name="#{name}"
		SQL
		) 
	print_search(search_result)
	
end

def search_by_cuisine(database, cuisine)
	search_result = database.execute(<<-SQL 
			SELECT * FROM restaurants WHERE cuisine="#{cuisine}"
		SQL
		) 
	print_search(search_result)
end

def search_by_price(database, price)
	search_result = database.execute(<<-SQL 
			SELECT * FROM restaurants WHERE price< "#{price}"
		SQL
		) 
	print_search(search_result)
end

def print_search(result)
	puts "----- SEARCH BY NAME -----"
	result.each do |restaurant|
			# p restaurant
			puts "#{restaurant["name"]} \t \t #{restaurant["cuisine"]} \t\t #{restaurant["price"]}"
		end
end

def print_list(database)
	full_database = database.execute("SELECT * FROM restaurants")	
	full_database.each do |restaurant|
			# p restaurant
			puts "#{restaurant["name"]} \t \t #{restaurant["cuisine"]} \t\t #{restaurant["price"]}"
		end
end


# # DRIVER CODE
# # search_result = nil
# add(restaurant_database, "Kingston Pizza", "fast food", 5)
# add(restaurant_database, "Basil", "French", 30)
# # delete(restaurant_database, "Basil")
# # # update(restaurant_database, "Kingston Pizza", "price", 7)
# # # update(restaurant_database, "Kingston Pizza", "name", "King")

# search_by_name(restaurant_database, "Basil")


# search_by_cuisine(restaurant_database, "fast food")

# search_by_price(restaurant_database, 20)

print_list(restaurant_database)