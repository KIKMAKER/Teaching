
require 'date' # this is a built-in Ruby library, but it's not loaded by default

# running the same code muiltiple times
age = 17
puts "You are #{age} years old"


age = 19
puts "You are #{age} years old"


age = 23
puts "You are #{age} years old"

# CARDINAL RULE: DON'T REPEAT YOURSELF

# METHODS collect a block of code together so that they can be called by a name

def age_by_one(age)
  puts "You were #{age} years old"
  puts "You are now #{age + 1} years old"
end


def full_name(first_name, last_name)

  return first_name + " " + last_name
end

puts full_name("Kiki", "Kennedy")

def tomorrow
  tomorrow_date = Date.today + 1
  return tomorrow_date.strftime("%B %d")
end


puts tomorrow
