require 'date'
# DATA TYPES

# Integers
1.even? # returns tru or false
addition = 1 + 1
subtraction = 1 - 1
multiplication = 1 * 1
division = 1 / 1

# Perfect division
# either

4.0/3

# # or
number = 4
number.fdiv(3)

# # string
"hello world".upcase
# puts = print string
puts "   hello class  ".strip
# p is like puts but with more data

# concatenation (adding strings together)
p "hello" + "world"
puts "hello" + " " + "world"

# # VARIABLES
motivation = "Go"

motivation = motivation.upcase

# # puts motivation * 10

"David came to Le Wagon"

# REASONS:
# 1. to store info for easy reuse
davids_sentence = "David came to Le Wagon"

# 2. To manipulate and change easily
davids_sentence.upcase

# # INTERPOLATION "#{}"
# inserts ANY code / variable into a string

age = 22
puts "your age starts as #{age}"
# incrementing age by 1
# age = age + 1
# age = age + 1
# age = age + 1
# age = age + 1

age += 1
age += 10
age -= 8

# USE CTRL + '?' TO COMMENT / UNCOMMENT

puts "You are #{age} years old"
puts "It is #{age.even?} that your age is even when you are #{age} years old"


# METHODS

# "Dear #{first_name.capitalize}"

puts "Dear Mmanare"
puts "Dear Darian"
puts "Dear David"
puts "Dear Ndi"
puts "Dear Janet"

# write a method instead

def greet(full_name)
  puts "Dear #{full_name}, welcome to le wagon #{full_name.upcase}!"
end

# the parameters (in brackets) define TEMPORARY VARIABLES that are used inside the method

def nice_clean_name(first_name, last_name)
  full_name = first_name.capitalize + " " + last_name.capitalize
  return full_name
end
greet("Mmanare")
greet("Darian")

puts "What is your first name?"
users_name = gets.chomp
# p users_name
# puts "---"
puts "Whats your last name?"
users_last_name = gets.chomp

full_name = nice_clean_name(users_name, users_last_name)

greet(full_name)

def tomorrow
  tomorrow_date = Date.today + 1
  return tomorrow_date.strftime("%B %d")
end

# puts tomorrow

puts "The date tomorrow is #{tomorrow}"
