class Santa

	def initialize(gender,ethnicity)
		puts "initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer",
		 "Prancer", "Vixen", "Comet", "Cupid",
		  "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}"
	end

	def about
		puts "Gender is: #{@gender}"
		puts "Ethnicity is: #{@ethnicity}"
		puts "reindeer ranking is: #{@reindeer_ranking}"
		puts "Age is #{@age}"
	end

end

# harry = Santa.new

# harry.speak

# harry.eat_milk_and_cookies("chocolate chip")

santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
santas << Santa.new("male", "Caucasian")

p santas[2]










