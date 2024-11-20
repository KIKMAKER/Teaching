require 'date'
# string
puts "this is a comment".upcase
puts "this is a comment".gsub("i", "x")


# integer
6
puts 6.even?

# float
5.6
puts 5.6.round

# boolean
true
false

# array
["Michael", "Mehdi", "Laura"]
p [1, 3, 18, "apple"].shuffle

# range
(1..10)

puts "This is a great photo of you".split

# string interpolation

puts "There are #{3 + 5} students in the room"

# puts "it is #{5.even?} that 5 is even"

# VARIABLES

number = 5879804


puts "it is #{number.even?} that #{number} is even"


name = "Dima"

puts "Hello #{name.upcase}!"


age = 18

# incrementation
age = age + 1

puts age.even?
age += 1

puts age.even?

# METHODS

first_name = "Laura"
last_name = "The Great"



def greet(first_name, last_name)
  return "Hello #{first_name.capitalize} #{last_name}, welcome to Le Wagon"
end

# you need to call the method (by it's name)
puts greet("laura", "the great")
# puts greet("Dima", "the wise")
# puts greet("Grant", "the playful")

# Method without a parameter
def tomorrow
  tomorrow_date = Date.today + 1
  return tomorrow_date.strftime("%B %d")
end

puts tomorrow
