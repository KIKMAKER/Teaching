require_relative "calculator.rb"

## PSEUDO CODE
puts "Welcome to Kiki's caculator, where four operations are possible!"
## conditional loop (two options)
# 1. until
# 2. while
# reminder conditional loops require a condition
# initialise a varable before the loop
# the variable must "force" us into the loop
user_choice = "Y"

# Start the loop
# check the condition with the loop
# option 1: while
# initialised variable must make the condition true
# while user_choice == "Y"

# option 2: until
# initialised variable must make this condition false
until user_choice == "N"

  puts "What is the first number in your desired calculation?"
  first_number = gets.chomp.to_f
  puts "What is the second number in your desired calculation?"
  second_number = gets.chomp.to_f
  puts "Which operator should I use? [+][-][*][/]"
  operator = gets.chomp

  result = calculator(operator, first_number, second_number)

  puts "The result is #{result}"

  # Need to create a way to stop the loop from running
  puts "Wanna do it again? [Y/N]"
  user_choice = gets.chomp.upcase

end
# end the loop

puts "Thank you for calculating with me today"
puts "Good bye!"
