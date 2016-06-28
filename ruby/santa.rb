class Santa
	attr_reader :age, :ethnicity 
	attr_accessor :gender

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

	def celebrate_birthday
		@age += 1	
	end

	def get_mad_at(name)
		@reindeer_ranking.delete(name)
		@reindeer_ranking.push(name) 		
	end

	# def gender= (new_gender)
	# 	@gender = new_gender
	# end

	# def age
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity
	# end
end

# harry = Santa.new("male", "Green")

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

# p santas[2]

# p harry

p santas[0].celebrate_birthday

p santas[0].get_mad_at("Vixen")

p santas[0].gender = ("female")

# p harry

p santas[0].age

p santas[0].ethnicity

p santas[2].about

p santas[0].about












