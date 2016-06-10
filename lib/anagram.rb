class Anagram

attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(array)
    array.each_with_object([]) do |word, matching|
      if word.split("").sort == @word.split("").sort
        matching << word
      end
      matching
    end
  end

end
