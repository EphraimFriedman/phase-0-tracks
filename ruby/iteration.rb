def add
	puts "this is before we added the numbers"
	yield("three", "five")
end

p add {|x, y| puts "#{x} plus #{y} is equal to 8"}


food = ["apple", "cheeseburger", "orange", "banana"]

food_type = {
	fruit: "plum",
	snacks: "chips",
	drink: "coke", 
}

p food

p food_type