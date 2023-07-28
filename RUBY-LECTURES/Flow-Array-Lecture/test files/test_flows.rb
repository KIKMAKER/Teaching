#IF STATEMENTS
# if condition
#   #run this code if condition is truthy
# end

#only considered false: FalseClass and nil/NilClass (absence of a value)

# condition = 5 > 3
# if condition
#   puts "I'm true"
# end

# puts "How old are you?"
# print ">"
# age = gets.chomp.to_i

# p age.class

# IF / ELSE

# if age >= 17
#   puts "You can vote"
# else
#   puts "Sorry you are too young to vote in Greece"
# end

# puts "Good bye"

# !condtion -> opposite

#condition = age >= 17

# if !condition
#   puts "Sorry you are too young to vote in Greece"
# else
#   puts "You can vote"
# end

# UNLESS
# unless condition
#   puts "Sorry you are too young to vote in Greece"
# else
#   puts "You can vote"
# end

# puts "You can vote" if condition
# puts "You can't vote" unless condition

# TERNARY OPERATOR
#format
# condition ? code_if_truthy : code_if_falsey

# response = age > 17 ? "You can vote" : "You can't vote"
# p response

#IF / ELSIF / ELSE

# if age>= 65
#   puts "No luck old man"
# elsif age>18
#   puts "You can vote"
# else
#   puts "Too young to vote"
# end

# CASE / WHEN

# puts "Welcome what will you do?"
# user_input = gets.chomp

# if user_input == "read"
#   puts "entering read mode"
# elsif user_input == "write"
#   puts "entering write mode"
# ...
# end

# case user_input
# when "read"
#   puts "entering read mode"
# when "write"
#   puts "entering write mode"
# when "draw"
#   puts "entering drawing mode"
# when "exit"
#   puts "exiting"
# end

# AND (&&) & OR (||)
# Code the opening times of a shop

# puts "What time is it (hour)?"
# hour = gets.chomp.to_i

# The shop is open after 9 and before 12

# if (hour >= 9) && (hour < 12)
#   puts "The shop is open!"
# else
#   puts "closed"
# end

# The shop is also open from 14 - 18

# if ((hour >= 9) && (hour < 12)) || (hour >= 14 && hour < 18)
#   puts "The shop is open!"
# else
#   puts "closed"
# end

# if (hour >= 9) && (hour < 12)
#   puts "The shop is open!"
# elsif hour >= 14 && hour < 18
#   puts "The shop is open again!"
# else
#   puts "closed"
# end


# WHILE / UNTIL
# run some code while / until a condition is met

# right_number = rand(1..5)
# p right_number

# # initialize the variable
# # force ourselves into the loop
# user_number = nil

# until 
# while user_number != right_number
#   puts "Guess the number (1 - 5):"
#   user_number = gets.chomp.to_i

#   if user_number != right_number
#     puts "WRONG"
#   end
# end

# puts "WINNER"

# FOR LOOP
numbers = %w[1 2 3]

for num in numbers
  puts num.to_i + 10
end
