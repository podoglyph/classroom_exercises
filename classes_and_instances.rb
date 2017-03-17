require 'pry'

class Fridge
  attr_reader :brand, :color, :temperature, :plugged_in, :contents
  attr_writer :brand, :color, :temperature, :plugged_in, :contents

  def initialize(brand = nil, color = nil, temperature = 40, plugged_in = false, contents = [])
    @brand = brand
    @color = color
    @temperature = temperature
    @plugged_in = true
    @contents = contents
  end

  def temperature_in_celsius
    (temperature - 32) * 5.0/9.0
  end

  def add_item(new_item)
    @contents << new_item
  end
  
end

binding.pry
""