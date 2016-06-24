# write method to change vowels
# create vowel hash
# find vowel in hash and save as new vowel

def change_vowel(vowel) 
	vowel_list = {"a" => "e", "e" => "i", "i" => "o", "o" => "u", "u" => "a"}
				new_vowel = vowel_list[vowel] 
end

# create method to change name
# loop through name
# if letter is a vowel
# 	change vowel
# otherwise if letter is z change to b
# otherwise change to next letter

def encrypt_name(agents_name)
	name_array = agents_name.split("")
	vowels = "aeiou"
	name_array.map! do |letter|
		if vowels.include?(letter)
			change_vowel(letter)
		elsif letter == "z"
			new_letter = "b"
		else
			if vowels.include?(letter.next) 
				new_letter = letter.next.next
			else
				new_letter = letter.next
			end
		end
	end
	name_array.join('').capitalize
end

# Driver code


# get first name
# make first name lowercase
# get last name 
# make last name lower case
# make first name new last name
# make last name new first name


list_of_alias_names = {}

loop do
	puts "Welcome to the encryption program! Press 'enter' to continue. (if you would like to exit type 'quit')"
	response = gets.chomp
	if response == "quit"
		puts "Thank you for using our encryption program!"
	break
	end

	puts " what is your first name?"
	first_name = gets.chomp

	puts "What is your last name?"
	last_name = gets.chomp 

	new_first_name = last_name.downcase
	new_last_name = first_name.downcase

	enctpyed_fist_name = encrypt_name(new_first_name)
	enctpyed_last_name = encrypt_name(new_last_name)

	agents_alias = enctpyed_fist_name + " " + enctpyed_last_name



list_of_alias_names[first_name + " " + last_name] = agents_alias

p list_of_alias_names

	puts "Your new alias is: #{agents_alias}" 
end

puts "List of agent name:"
list_of_alias_names.each do |real_name, alias_name|
	puts "#{alias_name}'s true name is #{real_name}."
	end 



















