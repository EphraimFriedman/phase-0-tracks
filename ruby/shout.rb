module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(word)
  	response = (word + "! ") * 8
  	response.rstrip!
  end
end

p Shout.yell_angrily("Crazy")

p Shout.yelling_happily("Horay")