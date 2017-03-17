#Class and Instances Exercise
require 'pry'
class Car
  attr_accessor :color, :wheel_count, :start_car
  
  def initialize(start_car = false)
    @start_car = start_car
  end
  
  def horn
    puts "BEEEEEEP!"
  end

  def drive(distance)
    puts "I am driving #{distance} miles."
  end
  
  def report_color
    puts "I am #{color}"
  end

  def start
    if start_car == false
      @start_car = true
      puts "Starting up!"
    else
      puts "BZZT! Nice try, though."
    end
  end
  
end

my_car = Car.new
my_car.horn
my_car.drive(12)
my_car.color = "purple"
puts my_car.report_color
my_car.wheel_count = 18

puts "This sweet ride is sitting on #{my_car.wheel_count} wheels."

my_second_car = Car.new
my_second_car.wheel_count = 2

#binding.pry
puts "This sweet ride is sitting on #{my_second_car.wheel_count} wheels."
