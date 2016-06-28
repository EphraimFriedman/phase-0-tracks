class Santa
	attr_reader :age, :ethnicity 
	attr_accessor :gender

	def initialize(gender,ethnicity)
		puts "initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(140)
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}"
	end

	def celebrate_birthday
		@age += 1	
	end

	def get_mad_at(name)
		@reindeer_ranking.delete(name)
		@reindeer_ranking.push(name) 		
	end

	
end

# create loop to create many santas
# 	give random gender and ethnicity
# 	set age in initialize to random number
# 	print out santas gender
# 	print out santas ethnicity
# 	print out santas age

genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]


100.times do |number|
	new_santa = Santa.new(genders.sample, ethnicities.sample)
	puts "new_santa_#{number + 1}:" 
	puts "Gender: #{new_santa.gender}" 
	puts "Ethnicity: #{new_santa.ethnicity}"
	puts "Age: #{new_santa.age}"
end























