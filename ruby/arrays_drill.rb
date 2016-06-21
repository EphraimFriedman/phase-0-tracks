def build_array(x, y, z)
	[x, y, z]

end

def add_to_array(array, added_word)
	array << added_word
end

days_of_week = []

p days_of_week

days_of_week << "sunday" << "monday" << "tuesday" << "wednesday" << "thursday"

p days_of_week

days_of_week.delete_at(2)

p days_of_week

days_of_week.insert(2, "random")

p days_of_week

days_of_week.shift

p days_of_week

p "Does the array include the word 'random'? #{days_of_week.include?("random")}"

days_of_week.include?("random")

months = ["june", "july", "august"]

days_and_months = days_of_week + months

p days_and_months

p build_array(1, 2, 3)

p add_to_array(months, "september")
