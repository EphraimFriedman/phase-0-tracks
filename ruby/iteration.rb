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
 
puts "This is before .each method"

food.each do |food_item| 
	p food_item
end
p food

puts "this is before the map method."
p food

food.map! do |food_item|
	food_item.upcase
end
puts "this is after the map method."
p food

puts "this is before .each method"
p food_type

food_type.each do |category, item|
	puts "The category #{category} includes #{item}."
end
p food_type

colors = ["red", "blue", "green", "orange", "purple", "pink"]
p colors

colors.delete_if {|color| color == "blue"}

p colors

colors.keep_if {|color| color.length > 4}
p colors

p colors.select {|color| color.include?("g")}

p colors.drop_while {|color| color != "purple"}




numbers = {
	first: "one",
	second: "two",
	third: "three",
	forth: "four",
	fifth: "five",
}
p numbers

numbers.delete_if{|place, word| word == "two"} 

p numbers

numbers.keep_if {|place, word| word.length >= 4}

p numbers

p numbers.select {|place, word| word.include?("f")}

p numbers.drop_while {|place, word| word != "five"}







