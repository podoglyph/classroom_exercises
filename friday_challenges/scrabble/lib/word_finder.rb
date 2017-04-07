require 'pry'

class WordFinder
  def words
    File.read('/usr/share/dict/words').split("\n")
  end

  def for_letters(letters)
    letters = letters.downcase.chars
    play_words = []

    words.select do |word|
        word = word.downcase
        word = word.chars
        word.all? { |w| w.member?(letters)}

        play_words << word
    end
    play_words
  end

end

w = WordFinder.new
binding.pry
""
