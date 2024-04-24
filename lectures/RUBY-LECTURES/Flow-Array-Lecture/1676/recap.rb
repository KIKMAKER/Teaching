require 'date'
# Array

[]
students = [ "Luvo", "Prince", "Nolu", 2, ["word", 43] ]
# index    = [    0   ,   1     ,   2   , 3,    4      ]

# built in methods
puts students.empty?
puts students.size

# Integer
number = 3
puts number.even?
puts number.odd?

# Float
pi = 3.14
puts pi.floor
puts pi.ceil

# Range
numbers = (2..90).to_a

even_numbers = numbers.select { |n| n.even?}
p even_numbers
puts students
p students

# String
name = "Kiki"
name.upcase
name.downcase

# True/False
true
p (5 == 3).class

# Date
# needs to be required
Date.today + 1

## VARIABLES

# used to store data for reuse and manipulation
age = 21

next_years_age = age + 1

# increment
age = age + 1
# shortcut
age += 1

## METHODS

def method_name(optional, parameters, number)
  # some code that gets executed when the method is called
  # (the job to be done when the method is called)
end

# call the method

method_name("some", "arguments", 56)

predefined_variable = "some"
second_variable = "arguments"
number = 100

method_name(predefined_variable, second_variable, number)

x = "kiki"
y = "kennedy"

def full_name(first_name, last_name)
  return first_name.capitalize + " " + last_name.capitalize
end


puts full_name("kiki", "kennedy")
puts full_name(x, y)
