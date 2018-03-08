class Bob
  def self.hey(phrase)
    sentence = Sentence.new phrase
    return "Whoa, chill out!" if sentence.is_yell?
    "Whatever."
  end
end

class Sentence
  attr_reader :sentence

  def initialize(sentence)
    @sentence = sentence
  end

  def is_yell?
    sentence[-1] == "!" || sentence.upcase == sentence
  end
end
