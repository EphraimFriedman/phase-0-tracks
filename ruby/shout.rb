# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(word)
#   	response = (word + "! ") * 8
#   	response.rstrip!
#   end
# end

# p Shout.yell_angrily("Crazy")

# p Shout.yelling_happily("Horay")

module Shout
def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(word)
  	response = (word + "! ") * 8
  	response.rstrip!
  end
end

class Sport_Fans
	include Shout	
end

class Programmers
	include Shout
end

fan = Sport_Fans.new

p fan.yelling_happily("Score")
p fan.yell_angrily("Booo")

programer = Programmers.new

p programer.yell_angrily("This code ain't working")
p programer.yelling_happily("Finally")
