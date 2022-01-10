require 'pry'

class Anagram
  attr_reader :word
  def initialize(word)
    @word = word
  end

  def match(array)
    split_word = @word.split('')
    found_word = ''
    found_word =
      array.filter do |word|
        found_word = word.split('').sort == split_word.sort
      end
    found_word
  end
  # binding.pry
end
