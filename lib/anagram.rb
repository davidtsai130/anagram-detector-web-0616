class Anagram

attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(array)
    array.each_with_object([]) do |word, matching|
      if word.split("").sort == self.word.split("").sort
        matching << word
      end
    end
  end

end
