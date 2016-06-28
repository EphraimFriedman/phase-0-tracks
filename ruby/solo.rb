# a car class
	
# 		method initialize
# 			input: will be color, year and size
# 			give it an attribute of any color
# 			and any year
# 			and any type

# 		method to honk horn
# 			print honk 3 times

# 		method gas type
# 			input: the gas type
# 			print please fill the tank with gas type

# 		method too fast
# 			input: speed limit and speed
# 			IF the user is going faster than the speed limit
# 			print too fast
# 			Otherwise print you are a good driver

class Car
	attr_reader :model_year, :car_type
	attr_accessor :color


	def initialize(color, model_year, car_type)
		puts "initializing new car..."
		@color = color
		@model_year = model_year
		@car_type = car_type
	end

	def honk
		puts "Honk! " * 3
	end

	def fill_gas_tank(gas_type)
		puts "please fill the tank to full using #{gas_type} gas. Thank you!"
		
	end

	def too_fast?(speed_limit, current_speed)
		if current_speed > speed_limit
			over_speed_limit = current_speed - speed_limit
			
			puts "You are going #{over_speed_limit} miles over the speed limit."
			puts "SLOW DOWN!"
		else
			puts "You are a safe driver! Keep it up!"
		end
	end





end

# user interface

# create empty array
# create loop and exit if user types done
# 	ask user for new car color
# 	get information
# 	ask user for model year
# 	get information and change to integer
# 	ask user for car_type
# 	get information


# 	initialize new car
# 	add new car to empty array

# print out array


list_of_new_cars = []

loop do
	puts "Please create a new car!"
	
	puts "What color is your car? (type 'done' to exit)"
	car_color = gets.chomp
	
		break if car_color == "done"

	puts "What is the model year of your car?"
	car_model_year = gets.chomp.to_i
	

	puts "What type of car is it?"
	type_of_car = gets.chomp
	

	new_car = Car.new(car_color, car_model_year, type_of_car)
	list_of_new_cars << new_car
end

puts "Thank you for making #{list_of_new_cars.length} new cars."
list_of_new_cars.each do |car|
	puts "New Car #{list_of_new_cars.index(car) + 1}"
	puts "Color: #{car.color}"
	puts "Model Year: #{car.model_year}"
	puts "Car Type: #{car.car_type}"
end


















