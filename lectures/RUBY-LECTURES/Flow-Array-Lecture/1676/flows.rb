# IF STATEMENTS

# puts "How old are you?"
# age = gets.chomp.to_i
# gets returns a string with a newline character (\n) on the end
# chomop removes the \n
# p age
# # p age.chomp
# p age.strip
# p age.class

# if the user is over 21 print something
# if some_condition
#   # code if the condition is met (truthy)
# end

# # age greater than 21
# condition = age > 21
# # age NOT greater than 21
# !condition


# if age < 21
#   puts "You are still a baby, don't worry about anything"
# end

# # one line version
# # code if condition

# puts "You are still young" if age < 99

# unless

# unless age > 21
#   puts "You are still a baby, don't worry about anything"
# end


# IF/ELSE

# if age > 21
#   puts "Don't start pottery yet"
# else
#   puts "You are a young one"
# end

# ternary operator -> one line if/else statement

# condition ? code_if_truthy : code_if_falsey

# puts age < 21 ? "You can't votew in the US" : "You can probably vote anywhere"

# puts age.even? ? "your age is even" : "your age is odd"

# IF/ELSIF/ELSE

# puts "what is the time? (hour)"
# time = gets.chomp.to_i

# if time < 12
#   puts "Good morning"
# elsif time > 24
#   puts "That's tomorrow mate"
# elsif time > 18
#   puts "Good evening"
# elsif time >= 12
#   puts "Good afternoon"
# else
#   puts "That is not a time"
# end

# CASE / WHEN

# puts "What do you want to do? [read|code|meditate|eat]"
# choice = gets.chomp

# case choice
# when "read"
#   puts "Entering read mode"
# when "code"
#   puts "Entering code mode"
# when "meditate"
#   puts "Entering meditation mode"
# when "eat"
#   puts "Entering eating mode"
# else
#   puts "that was not an option, you should do your flashcards"
# end

# puts "what is the time? (hour)"
# time = gets.chomp.to_i

# if time < 12 && time > 9
#   puts "Good morning"
# elsif time > 24
#   puts "That's tomorrow mate"
# elsif time > 18 && time <= 24
#   puts "Good evening"
# elsif time >= 12 && time <= 18
#   puts "Good afternoon"
# else
#   puts "It's too early to be talking"
# end


# if (time > 9 && time < 12) || (time > 14 && time < 17)
#   puts "The shop is open"
# elsif time < 9 || time >= 17
#   puts "The shop is closed"
# elsif time >= 12 && time <= 14
#   puts "Closed for lunch"
# end


# LOOPS

# need a condition to exist (so that it can be evaluated)
# need the condition to be met (so that we are forced into the loop)

# while condition
#   # execute this code
#   # need to change the condition within the loop
# end

# price_to_find = rand(1..5)
# choice = nil     # variable initialization
# puts price_to_find

# # while choice != price_to_find # evaluates as truthy the first time the loop runs
# #   puts "How much (between $1 and $5)?"
# #   choice = gets.chomp.to_i
# #   # ruby now goes back to the while condition
# # end


# until choice == price_to_find
#   puts "How much (between $1 and $5)?"
#   choice = gets.chomp.to_i
# end

# puts "You won! Price was #{price_to_find}$"


# for num in [1, 2, 3]
#   puts "hello"
#   puts "the number is #{num}"
# end
