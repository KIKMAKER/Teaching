# interface file used to sort our code - this code is used to interact in the terminal, methods defined in another file)
require_relative 'methods.rb'

puts "What is your age?"


# age = gets.chomp # returns a string
age = gets.chomp.to_i # returns an integer

# p age.class

age_by_one(age)
# puts ["alpha", "beta", "gamma"]
# p ["alpha", "beta", "gamma"]
