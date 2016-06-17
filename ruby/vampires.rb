#What is your name? 
#How old are you? 
# What year were you born? 
# Would you like garlic bread? 
#Would you like to enroll in the company’s health insurance? 

puts "New Employee Form"
puts "how many Employees are you processing today?"
Employee_num= gets.to_i
times= 0
until times == Employee_num

	puts "What is your name?"
	name= gets.chomp

	puts "How old are you?"
	age= gets.to_i

	puts "What year were you born?"
	year= gets.to_i

	current_year= 2016
	correct_age= current_year- year
	if correct_age == age
		correct_age= true
	else
		correct_age= false
	end

	puts "Would you like Garlic Bread on your menu?"
	garlic_bread= gets.chomp
	if garlic_bread== "yes"
		garlic_bread= true
	elsif garlic_bread== "no"
		garlic_bread= false
	else
		puts "Please answer yes or no"
	end

	puts "Would you like to enroll in the company's health insurance?"
	health_insurance= gets.chomp

	if health_insurance== "yes"
		health_insurance= true
	elsif health_insurance== "no"
		health_insurance= false
	else
		puts "Please answer yes or no"
	end

	if name== "drake cula" || name== "tu fang"
		result= "defiantly a vampire"
	elsif correct_age && (garlic_bread || health_insurance)
		result= "Probably not a vampire"
		loop do 
			puts "What are you allergic to (type done to exit)?"
			allergy= gets.chomp
			if allergy == "done"
				break
			end
			puts allergy
			if allergy == "sunshine"
				result= "probably a vampire"
				break
			end
		end
	elsif correct_age == false 
		if garlic_bread == false && health_insurance == false
			result= "Almost certainly a vampire"
		elsif
			garlic_bread== false || health_insurance== false
		result="probably a vampire"
		end
	else
		result= "result inconclusive"
	end

	puts result
	times += 1
end