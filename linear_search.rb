#Linear Search

# Write code to find a value x (such as 25) in the array following this algorithm:

# Set a found flag to false
# Set a marker to zero
# Find the value in values at position marker
# See if that value is equal to the one we're searching for
# If it is, set found to true
# If it's not, do nothing
# If marker is at the end of the set, exit the search and say the value was not found
# If the value has not been found, increment the marker and go back to step 2
# If the value has been found, print that message

require 'pry'

puts "Enter the first number in the range to search. > "
first_num = gets.to_i

puts "Enter the last number in the range to search. > "
last_num = gets.to_i

puts "Thanks. Now, what number are you looking for? > "
query_value = gets.to_i

def query_integers(first_num, last_num, query_value)
  found = false
  marker = 0
  values = (first_num..last_num).to_a.shuffle

  while found == false && marker < values.length
    marker += 1

    if values.at(marker) == query_value
      found = true
      puts "The value has been found."
    end

    if marker == values.length
    puts "The value was not found."
    end
    
  end

end

query_integers(first_num, last_num, query_value)