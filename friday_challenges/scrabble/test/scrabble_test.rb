require './lib/scrabble.rb'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/emoji'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
    assert_equal 0, Scrabble.new.score(nil)
    assert_equal 0, Scrabble.new.score("")
  end
end
