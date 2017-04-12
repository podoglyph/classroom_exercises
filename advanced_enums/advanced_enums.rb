require 'pry'
require 'pry-state'

class MakeChocolate
  attr_reader :a, :b

  def initialize
    @a = [ "Ritual",
          "Chuao",
          "Chocolove",
          "Scharffen Berger"]

    @b = [ "Peter Pan",
          "Skippy",
          "Justin's",
          "Smucker's",
          "Crazy Richard's"]
    run
  end

  def combine(a, b)
    combo = a.zip(b)
    create_sentence(combo)
  end

  def create_sentence(combo)
    combo.each do |x|
      puts "You got your #{x.first} in my #{x.last}!"
    end
  end

  def run
    combine(a, b)
  end

end

m = MakeChocolate.new
