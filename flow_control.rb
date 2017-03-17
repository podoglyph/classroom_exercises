#Just some flow control testing
#Extend your previous program so that if the text the user enters has an even number of letters, it prints “EVEN!”, and if it has an odd number of letters, it prints “ODD!”.

require 'byebug'

# puts "Please enter a message. > "

# message = gets.to_s.chomp

# if message.length % 2 == 0
#     puts "Even"
# else
#     puts "Odd"    
# end 

# puts "Your message is: #{message}."

# Write a new program that prompts the user for a message, then, depending on the following conditions, prints an appropriate message:

# If the message ends with a consonant, print “CONSONANT!”
# If the message ends with a vowel, print “VOWEL!”
# If the message ends with a “y”, print “DON’T KNOW!”

# puts "Give me a message. > "
# message = gets.chomp.downcase
# vowel = ["a", "e", "i", "o", "u"]

# if vowel.include? message[-1] 
#   puts "VOWEL!"

# elsif message[-1] == 'y'
#   puts "Don't Know!"

# else
#   puts "CONSONANT!"
# end

#Times loop

# line = "Line"

# 5.times do |l|
#   if l.even?
#     puts line + " is even"
#   else
#     puts line + " is odd"
#   end
# end

#THREE LOOPS: Generate the output below using three totally separate implementations (times, while and until):
# i = 1
# 5.times do |output|
#     puts "This is my output line #{i}."
#     i += 1
    
# end

# i = 1
# while i <= 5 do
#     puts "This is my output line #{i}."
#     i += 1
# end

# i = 1
# until i > 5 do
#     puts "This is my output line #{i}."
#     i += 1
# end

#Rando-Guesser

secret_number = 8

puts "Guess the secret number! > "
guess = gets.to_i

# while guess != secret_number
#     puts "Guess again!"
#     guess = gets.to_i
# end

until guess == secret_number
    puts "Guess again!"
    guess = gets.to_i
end
puts "You win!"






