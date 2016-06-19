# create loop
# 1. find letter in password
# 2. make that letter go next.

def encrypt(password)
	index = 0
	while index < password.length

		password[index] = password[index].next

		index += 1
	end
return password

end

# p encrypt("hello")






# def encrypt(password)
#   for x in 0...password.length
#     password[x] = password[x].next
#   end
#   puts password
# end

# encrypt("hello")

# def decrypt(password)
#   alphabet = "abcdefghijklmnopqrstuvwxyz"
#   password[0] = alphabet[alphabet[password[0]]-1]
# end





# decrypt("ifmmp")

#set index to 0
# 1. Have a word
# while index < word length
	
	# 2. find one letter
	# 3. have alphabet
	# 4. find one_letter index number in alphabet
	# 5. subtract index number by one
	# 6. find new_number in alphabet
	# 7. set 
	# add one to index
#end

def decrypt(encrypted_password)
index = 0

# p encrypted_password
# p encrypted_password.length

while index < encrypted_password.length

	one_letter = encrypted_password[index] 
	alphabet = "abcdefghijklmnopqrstuvwxyz" 
	index_num = alphabet.index(one_letter)
	new_num = index_num - 1 
	alphabet[new_num] 
	encrypted_password[index] = alphabet[new_num]
	
	index += 1
end
return encrypted_password
end

# p decrypt("ifmmp")

p encrypt("abc")
p encrypt("zed")
p decrypt("bcd")
p decrypt("afe")

