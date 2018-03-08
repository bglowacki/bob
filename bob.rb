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
    @sentence = sentence
  end

  def is_yell?
    cleaned_sentence.upcase == cleaned_sentence && cleaned_sentence != '?'
  end

  def is_question?
    cleaned_sentence[-1] == '?'
  end

  def is_empty?
    altered_sentence = cleaned_sentence.gsub(/,\s/, "")
    altered_sentence.empty?
  end

  def is_regular?
    is_empty? || (!is_question? && !is_yell?)
  end

  private

  def cleaned_sentence
    sentence.gsub(/[\d(:)\s),]/, "")
  end
end
