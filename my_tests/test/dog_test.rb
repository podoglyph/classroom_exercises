require 'minitest/autorun'
require '../lib/dog.rb'
require 'pry'

class DogTest < Minitest::Test
  
  def test_has_name
    dog = Dog.new("Stark")
    assert_equal "Stark", dog.name
  end

  def test_is_happy
    dog = Dog.new("Stark")
    assert_equal true, dog.wagging_tail?
  end
  
end
