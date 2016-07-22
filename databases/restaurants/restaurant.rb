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

search_by_name(restaurant_database, "Bas")


search_by_cuisine(restaurant_database, "fas")

search_by_price(restaurant_database, 20)

print_list(restaurant_database)