require 'pry'
require 'pry-state'

class ReduceStuff
  attr_reader :words

  def initialize
    @words = %w[pop tarts are tasty treats yo]
  end

  def reduce_it(input)
    input = input.reduce("") { |a, word| a + word }
    return input
  end

end

r = ReduceStuff.new
binding.pry
""
