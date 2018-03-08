class Bob
  def self.hey(phrase)
    sentence = Sentence.new phrase

    return 'Whatever.' if sentence.is_regular?
    return 'Whoa, chill out!' if sentence.is_yell?
    return 'Sure.' if sentence.is_question?
  end
end

class Sentence
  attr_reader :sentence

  def initialize(sentence)
    @sentence = sentence.gsub(/\d/, "")
  end

  def is_yell?
    sentence.upcase == sentence && sentence != '?'
  end

  def is_question?
    sentence[-1] == '?'
  end

  def is_empty?
    altered_sentence = sentence.gsub(/,\s/, "")
    altered_sentence.empty?
  end

  def is_regular?
    is_empty? || (!is_question? && !is_yell?)
  end
end
