# Bisect Search

# Say you're searching for a value t in a search set of values
# Find the middle value in values we'll call m
# If t is equal to m then your target is found
# If t is less than m, your new search set is the half of values before m
# If t is greater than m, your new search set is the half of values after m
# If your search set is now empty, the t is not found
# If your search set is not empty, return to step 2 with that new set
# When you think you have it working, make sure to try out some tricky cases like these:

# Search for the value that is right on the dividing line of a set
# Search for a value that is not found
# Search for a value that is the only value in a set
# Let's do some analysis of the algorithm. But, fair warning, this will be much tougher than the first algorithm. Continue with the idea that comparing two numbers is the only instruction that is "expensive" in this algorithm.

# How many comparisons would run in the best-case scenario for that algorithm?
# How many comparisons would run in the worse-case scenario for that algorithm?
# How many comparisons would run in an average case?
# How would the worst-case scenario grow in proportion to the number of elements in the set?

require 'pry'

found = false
value_not_present = false
values = (1..10000).to_a.sample(1000).sort

middle_index = values.length / 2
middle_value = values.at(middle_index)

puts "What number shall we query? > "
query_value = gets.to_i

if query_value == middle_value
  found = true
  puts "Target found at middle."
end

until found || value_not_present
  marker = 0
  if query_value < middle_value
    first_half = values.select { |num| num < middle_value }
    #binding.pry
    if first_half.include?(query_value)
      found = true
      puts "Target located in lower half of sample."
    else
      value_not_present = true
      puts "The target was not found down here."
    end
  else
    second_half = values.select { |num| num > middle_value }
    if second_half.include?(query_value)
      found = true
      puts "Target located in upper half of sample."
    else
      value_not_present = true
      puts "The target was not found up here."
    end
  end
  #binding.pry
  #""
end