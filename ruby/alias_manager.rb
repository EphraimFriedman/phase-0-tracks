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

def change_vowel(word)
	word_array = word.split("")
	# p word_array
	vowel_list = {"a" => "e", "e" => "i", "i" => "o", "o" => "u", "u" => "a"}
	word_array.map! do |letter|
		# p letter
		# p vowel_list[letter] 
		if vowel_list.has_key?(letter)
			new_vowel = vowel_list[letter] 
			# p new_vowel
		else 
			letter
		end
	end
	word_array.join('')
end

# p change_vowel("felicia")

