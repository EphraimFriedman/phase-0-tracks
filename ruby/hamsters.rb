#ask for hamster's name
#hamster's volume from 1-10
#fur color
#whether the hamster is a good candidate for adoption(yes or no)
#estimated age

puts "Before you hand your stray hamster over to us we would like to ask you a few questions."
puts "What is your stray hamster's name?"
name=gets.chomp
puts "How loud do you think your hamster is between 1 and 10?"
volume=gets.to_i
puts "What is your hamster's fur color?"
fur_color=gets.chomp
puts "Is your hamster a good candidate for adoption (yes or no)?"
adoption=gets.chomp
if adoption == "yes"
  adoption=true
else adoption=false
end
puts "How old do you think your hamster is?"
age=gets.chomp
if age == ""
  age=nil
else age=age.to_f
end

puts "Name:#{name}""\n""Volume:#{volume}""\n""Fur color:#{fur_color}""\n""Ready for adoption:#{adoption}""\n""Age:#{age}"