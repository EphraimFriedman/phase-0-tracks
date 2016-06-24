# name (e.g., "Felicia Torres") and creates a fake name with it 
# by doing the following:

# Swapping the first and last name.
# Changing all of the vowels (a, e, i, o, or u) to the next vowel 
# in 'aeiou', and all of the consonants 
# (everything else besides the vowels) 
# to the next consonant in the alphabet. 
# So 'a' would become 'e', 'u' would become 'a',
#  and 'd' would become 'f'.

# write method to change vowels
# create arry of vowels
# loop through string
# if the tetter is a vowel 
# 	find that letter in the vowel array and go next

def change_vowel(vowel) #word 
	# word_array = word.split("")
	# p word_array
	vowel_list = {"a" => "e", "e" => "i", "i" => "o", "o" => "u", "u" => "a"}
	# vowel.map! do |letter|
		# p letter
		# p vowel_list[letter] 
		# if vowel_list.has_key?(letter)
			new_vowel = vowel_list[vowel] 
			# p new_vowel
		# else 
		# 	letter
		# end
	# end
	# word_array.join('')
end

# p change_vowel("a")
# p change_vowel("e")
# p change_vowel("i")
# p change_vowel("o")
# p change_vowel("u")


# loop through name
# if letter is a vowel
# 	change vowel
# otherwise 
# 	next letter

def encrypt_name(agents_name)
	name_array = agents_name.split("")
	# p name_array
	vowels = "aeiou"
	# p vowels
	name_array.map! do |letter|
		if vowels.include?(letter)
			# p vowels.include?(letter)
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

# p encrypt_name("felicia")


# get first name
# make first name lowercase
# get last name 
# make last name lower case
# make first name new last name
# make last name new first name

first_name = "Felicia"
last_name = "Torres" 

new_first_name = last_name.downcase
new_last_name = first_name.downcase

enctpyed_fist_name = encrypt_name(new_first_name)
enctpyed_last_name = encrypt_name(new_last_name)

agents_alias = enctpyed_fist_name + " " + enctpyed_last_name

p agents_alias


















