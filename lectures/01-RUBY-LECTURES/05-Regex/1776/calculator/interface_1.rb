# > Enter a first number:
# > 6
# > Enter a second one:
# > 8
# > Which operation [+][-][x][/]
# > x
# > Result: 48


## PSEUDO CODE
puts "Welcome to Kiki's caculator, where four operations are possible!"
# Ask the user for a first number
puts "What is the first number in your desired calculation?"
# get(s) the first number and store in it a variable
first_number = gets.chomp.to_i
# p first_number
# # first_number = first_number.to_i
# # p first_number.class

# # Ask the user for a second number
puts "What is the second number in your desired calculation?"
# # get the second number and store it in a variable
second_number = gets.chomp.to_i

# # Ask the user for an operator
puts "Which operator should I use? [+][-][*][/]"
# get the operator and store it in a viariable
operator = gets.chomp

# calculate the result

# apply a different calculation depending on the operator
# check if the operator is a plus
# if operator == "+"
# # calculate the result
#   result = first_number + second_number

#   # check if the operator is a minus
# elsif operator == "-"
#   # calculate the result
#   result = first_number - second_number

#   # check if the operator is a multiply
# elsif operator == "x"
#   # calculate the result
#   result = first_number * second_number

#   # check if the operator is a dividy
# elsif operator == "/"
#   # calculate the result
#   result = first_number.to_f / second_number
#   # result = first_number.fdiv(second_number)
# else
#   # error handling
#   puts "that is not a valid operation"
# end


# case operator
# when "+"
#   result = first_number + second_number
# when "-"
#   result = first_number - second_number
# when "x"
#   result = first_number * second_number
# when "/"
#   result = first_number / second_number
# end

case operator
when "+" then result = first_number + second_number
when "-" then result = first_number - second_number
when "x" then result = first_number * second_number
when "/" then result = first_number / second_number
end

# print the result to the terminal
puts "The result is #{result}"
