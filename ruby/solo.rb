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

# TEST CODE

new_car = Car.new("white", 2015, "sudan")

p new_car

new_car.honk

new_car.fill_gas_tank("regular")

new_car.too_fast?(25, 56)

new_car.too_fast?(25, 12)

p new_car.model_year

p new_car.color = "red"

p new_car

p new_car.car_type
