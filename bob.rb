class Bob
  def self.hey(sentence)
    return "Whoa, chill out!" if sentence[-1] == "!" || sentence.upcase == sentence
    "Whatever."
  end
end
