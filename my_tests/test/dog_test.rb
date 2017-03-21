require 'minitest/autorun'
require '../lib/dog.rb'
require 'pry'

class DogTest < Minitest::Test
  
  def test_has_name
    dog = Dog.new("Stark")
    assert_equal "Stark", dog.name
  end
  
end
