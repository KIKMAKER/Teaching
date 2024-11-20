require_relative 'calculator.rb'
# interface.rb

# Pseudo-code (what are the steps in plain english):
# 1. Say hello to the user
puts "Welcome to this amazing, super complex calculator"

# initialise the 'choice' variable
choice = ""

# introduce a CONDITIONAL loop
until choice == "N"
# while choice != "N"
  # 2. Ask user for the first number
  puts "What is the first number in your calculation?"
  # 3. Get user answer (and store it in a variable)
  first_number = gets.chomp.to_i
  # 4. Ask user for second number
  puts "What is the second number in your calculation?"
  # 5. Get user answer (and store it in a variable)
  second_number = gets.chomp.to_i

  # 6. Ask the user for the operator ( [+][-][*][/])
  puts "What would you like to do with these two numbers [+][-][*][/]"
  operator = gets.chomp
  # 7. Do the calculation
  # 7.1 check what the operator is

  # if it's plus : result = first_number + second_number
  result = calculator(first_number, second_number, operator)
  # etc
  # 8. Print the result
  puts "The result is #{result}"

  puts "Do you want to calculate again? [Y/N]"

  choice = gets.chomp.upcase
end

puts "Thanks for using this, I hope it solved all your problems!"
