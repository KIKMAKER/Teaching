puts 'Welcome to your handy dandy super advanced calculator'

# force ourselves into the loop
# initialising a variable
calculate_again = ""
# BEGIN THE LOOP

# TWO TYPES OF CONDITIONAL LOOPS
# WHILE => runs while a condition is true until a condition is false
# while calculate_again == "y"
# UNTIL => runs until a condition is true while a condition is false

until calculate_again == "n"

  puts '> Enter a first number:'
  first_number = gets.chomp.to_i
  puts '> Enter a second number:'
  second_number = gets.chomp.to_i
  puts '> Pick an operator ([+][-][*][/])'
  operator = gets.chomp

  case operator
  when '+'
    result = first_number + second_number
    puts "> Result: #{result}"
  when '-'
    result = first_number - second_number
    puts "> Result: #{result}"
  when '*'
    result = first_number * second_number
    puts "> Result: #{result}"
  when '/'
    result = first_number.fdiv(second_number)
    puts "> Result: #{result}"
  else
    puts 'Invalid operation'
  end

  # NB FOR A LOOP
  # Need a way to break the loop i.e to change the condition
  # Ask the user if they want to calculate again? [Y/N]
  puts "Calculate again? [y/n]"
  # store the answer in a variable
  calculate_again = gets.chomp
end
# END THE LOOP

puts "Thanks for using the calculator, good bye!"
