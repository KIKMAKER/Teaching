# puts "I'm in the demo file"
# motivation = 'Go'

# puts (motivation + " ") * 10

# puts motivation.upcase

# age = 21

# puts "My age is #{age}"

# age = age + 1
# age += 1
# age /= 2

# puts "My age is #{age}"


"hello Jack."
"hello Sammy."
"hello Lou."


# name = "Jack"
# puts "Hello #{name}"


# def greet(first_name, last_name)
#   return "hello #{first_name.upcase}. \n Your surname is on our records as #{last_name}"
# end


# puts greet("Jack", "Whale")
# puts greet("Meg", "Dragon")
# puts greet("Nolu", "Firefighter")

sammy_name = "sammy"

puts greet(sammy_name, "Junior")


# no parameters
require 'date'

# today = Date.today
# puts today.day
# puts today.class

def tomorrow
  tomorrow_date = Date.today + 1
  return tomorrow_date.strftime("%A")
end

puts tomorrow

tomorrow_date
