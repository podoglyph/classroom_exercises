#Strings and Integers Tutorial

# String Compression : There's a silly compression algorithm that outputs the first letter, the number of letters in the middle, and the last letter. So for the string "Kalamazoo" it'd output "K7o" or "Denver" would be "D4r". Can you write code to implement that?

city_name = gets.chomp

print city_name[0]
print city_name.length - 2
puts city_name[-1]




