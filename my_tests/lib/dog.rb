class Dog
  attr_reader :name

  def initialize(name = nil, wagging = true)
    @name = name
    @wagging = wagging
  end

  def wagging_tail?
    @wagging
  end
  
end
