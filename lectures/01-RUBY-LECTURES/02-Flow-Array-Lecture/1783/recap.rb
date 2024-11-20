# if I need information from another on of my files:
require_relative 'greet.rb'

# DATA TYPES

range = (1..100)
# p rand(1..100)
# p rand(1..100)
# p rand(1..100)
# p rand(1..100)
# p rand(1..100)
# p rand(1..100)
# p rand(1..100)

p rand(range)

p [1,2,3].sample

# integers

3.even?
2.odd?
# all of the arthimetic operations
2 + 2

# puts "pick a number to divide by 2"
# number = gets.chomp.to_i

# p number.fdiv(2)
# number.to_f / 2
# number / 2.0

# Float

p 4.5677.floor
p 3.92345674.truncate
p 3.12345674.truncate(3)

# Arrays
cities = ["Joburg", "PE", "Durban", "Lagos"]

p cities.shuffle
# p cities.split # split is a String method that splits the string into an array
p cities.sort
p cities.count
p cities.length
p cities.size

# String
p "JHB! PE! Lag!os".split('!')
p "  hello  ".strip
p "Hello everyone".gsub("e", "eeee")

# VARIABLES AND METHODS

puts "Whats your first name?"
first_name = gets.chomp

puts "Whats your second name?"
second_name = gets.chomp


# call the method by passing it the appropriate arguments
# either data directly
greet("kiki", "kennedy")
# or data stored in a variable
greet(first_name, second_name)
