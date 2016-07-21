# REQUIRE database program
require 'sqlite3'

# create database
restaurant_database = SQLite3::Database.new("restaurants.db")

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

def update(database, current_name, catagory, update_info)
	database.execute(<<-SQL 
		UPDATE restaurants SET "#{catagory}"="#{update_info}" WHERE name="#{current_name}" 
		SQL
		)	
end

# DRIVER CODE
# add(restaurant_database, "Kingston Pizza", "fast food", 5)
# add(restaurant_database, "Basil", "French", 30)
# delete(restaurant_database, "Basil")
update(restaurant_database, "Kingston Pizza", "price", 7)
update(restaurant_database, "Kingston Pizza", "name", "King")
