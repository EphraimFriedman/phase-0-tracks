class Santa

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}"
	end

	def initialize
		puts "initializing Santa instance..."
	end

end

harry = Santa.new

harry.speak

harry.eat_milk_and_cookies("chocolate chip")

