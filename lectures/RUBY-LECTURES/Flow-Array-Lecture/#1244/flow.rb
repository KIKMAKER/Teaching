# IF STATEMENTS
condition = 5 > 3

if condition
  puts "I am true"
end

puts "How old are you?"
print ">"
age = gets.chomp.to_i

if age >= 18
  puts "You can vote basically anywhere in the world"
else
  puts "You are too young to vote"
end

# !condition -> opposite

condition = age >= 18

if !condition
  puts "You are too young to vote"
else
  puts "You can vote basically anywhere in the world"
end

# UNLESS
unless age > 17
  puts "You are too young to vote"
else
  puts "You can vote basically anywhere in the world"
end

# ONE-LINERS
# one branch
puts "You can vote" if condition
puts "You can't vote" unless condition

# TERNARY OPERATOR
# two branches
#format
condition ? code_if_truthy : code_if_falsey
response = age >= 18 ? "You can vote" : "No voting for you"
p response


if age > 80
  puts "Please vote enlightened one"
elsif age > 65
  puts "Toooooo old man!"
elsif age >= 18
  puts "You can vote"
else
  puts "Sorry, one day!"
end

# CASE / WHEN

puts "Welcome, what do you want to do"

user_input = gets.chomp

case user_input
when "read"
  puts "entering read mode"
when "write"
  puts "entering write mode"
when "yoga"
  puts "Go do yoga"
when "exit"
  puts "exiting the programme"
else
  puts "wrong input"
end

# no !condition

# AND (&&) OR (||)
# Code opening time for a shop

puts "What's the time"
hour = gets.chomp.to_i

if hour >= 9 && hour < 12 || hour >= 14 && hour < 18
  puts "shop is open"
else
  puts "shop is closed"
end

#SIMPLIFY
if hour >= 9 && hour < 12
  puts "shop is open"
elsif hour >= 14 && hour < 18
  puts "shop is open"
else
  puts "shop is closed"
end

#KEEP IT DRY

is_morning = hour >= 9 && hour < 12
is_afternoon = hour >= 14 && hour < 18

if is_morning || is_afternoon
  puts "shop is open"
else
  puts "shop is closed"
end

result = is_morning || is_afternoon ? "shop is open" :  "shop is closed"
p result


# WHILE
# while a condition is true

while condition
  #code
end

right_number = rand(1..5)
p right_number

# # initialise user input
# user_input = nil

while user_input != right_number
  puts "Pick a number from 1 to 5"
  user_input = gets.chomp.to_i

  if user_input != right_number
    puts "you are wrong, try again"
  end
end

puts "You won"

# UNTIL
until user_input == right_number
  puts "Pick a number from 1 to 5"
  user_input = gets.chomp.to_i

  if user_input != right_number
    puts "you are wrong, try again"
  end
end

puts "You won"

# FOR LOOPS

numbers = %w[hello jason mark 4 5] # ["1", "2", "3"]

for number in numbers
  puts "The number is #{number}"
end
