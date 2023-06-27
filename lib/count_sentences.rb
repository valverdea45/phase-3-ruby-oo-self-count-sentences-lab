require 'pry'
class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    array_of_sentences = self.split(" ")
    total_sentences = []
    
    array_of_sentences.map do |sentence|

      if sentence.empty?
        nil
      elsif sentence.sentence?
        total_sentences << sentence
      elsif sentence.question?
        total_sentences << sentence
      elsif sentence.exclamation?
        total_sentences << sentence
      end
    end

    total_sentences.count

  end

      
end