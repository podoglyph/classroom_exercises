gem 'minitest'
require './lib/word_finder.rb'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class WordFinderTest < Minitest::Test

  def test_class_exists
    finder = WordFinder.new

    assert_equal WordFinder, finder.class
  end

  def test_for_letters_returns_some_letters
    finder = WordFinder.new
    letters = "asdfkjhf"

    assert_equal letters, finder.for_letters(letters)
  end
end
