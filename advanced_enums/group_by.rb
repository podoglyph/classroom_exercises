
class Group
  attr_reader :array
  def initialize
    @array = ["aardvark", "art", "airplane", "boy", "burp", "boot", "green", "goop", "super"]
    group_it(array)
  end


  def group_it(array)
    array = array.group_by { |x|  x = x.chars.first}
    puts array
  end

end
g = Group.new
