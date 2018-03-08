class Bob
  def self.hey(phrase)
    sentence = Sentence.new phrase
    sentence.all_numbers?
    return 'Whatever.' if sentence.all_numbers?
    return 'Whoa, chill out!' if sentence.is_yell?
    return 'Sure.' if sentence.is_question?
    'Whatever.'
  end
end

class Sentence
  attr_reader :sentence

  def initialize(sentence)
    @sentence = sentence
  end

  def is_yell?
    sentence.upcase == sentence
  end

  def is_question?
    sentence[-1] == '?'
  end

  def all_numbers?
    altered_sentence = sentence.gsub(/,\s/, "")
    !!(altered_sentence =~ /\A[-+]?[0-9]+\z/)
  end
end
