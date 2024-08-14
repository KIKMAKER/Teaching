# DATA TYPES / CLASSES

## Interger ->  1, 14, 34022847

## Float ->  1.0

# methods
# puts 14.to_s
# p 14.even?
# p 3.odd?

## String

# defined ""

# p "Hello".upcase
# puts 'howdy'.capitalize

# puts "Hello #{14.even?}"

## Array

# array = []
# array_two = [1, "one", :one, [2, "two"]]

# p array.empty?
# p array_two

## Range
# one_to_ten = (1..10)
# puts ('a'..'z').to_a

# puts one_to_ten
# p one_to_ten.step(2)

## Booleans

# True Class
# False Class

# p false.class
# p true.class
# p nil.class


## Date Class
# require 'date'

# p Date.today - 1


# VOCABULARY

# *Assigning* a *variable*
# age = 25
# age.class

# name = "Kiki"

# Initialise a variable
# age = 0
# age = nil
# age = ""
# names = []

# Increment
  # age = age + 1
  # age = 0 + 1

# age += 1

# p age

# counter = nil
# counter += 1

# METHODS

# def method_name(parameter_1, parameter_2)
#   return some_code parameter_1
# end

y = 1

def age_by_one(age)
  age + 1
end

p age_by_one(y)
