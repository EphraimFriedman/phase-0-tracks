# require sqlite3
require 'sqlite3'
#require other files
require_relative 'business_logic'
require_relative 'ui_methods'

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

# run restaurant finder program
launch(restaurant_database)