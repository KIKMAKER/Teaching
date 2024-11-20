# LOOPING

# while loop

# while condition
#   # run this code (again and again as long as the condition is met)
# end

puts "whats your age?"
starting_age = gets.chomp.to_i

while starting_age < 21
  puts "You are #{starting_age} you can't buy booze in the USA"
  puts "a year passes"

  # increment the starting_age by 1
  # starting_age = starting_age + 1
  starting_age += 1

end

# puts "Time for champaigne!"

# 1. Need a way to end the loop (change the variable that the condition is based on)
# 2. Need to initialise the variable before the loop to FORCE us into the loop




# PRICE IS RIGHT
# computer_choice = rand(1..5)
# # [1,2,3,4,5].sample
# # p computer_choice
# user_choice = 0

# until user_choice == computer_choice
#   puts "pick a number (1..5)"
#   user_choice = gets.chomp.to_i
# end

# puts "You chose #{user_choice} and the computer chose #{computer_choice}"

# TWO CONDITIONAL LOOPS
# 1. While a condition is true (i.e until it is false)
# 2. Until a condtition is true (i.e while it is false)


# NUMBERED LOOPS

numbers = (1..5)

# for number in numbers
#   puts "this is loop number #{number}"
#   puts "And that number times 76 is #{number * 76}"
# end

names = ["Noks", "Sharon", "Dami"]

# for name in names
#   puts "The students name is #{name}"
# end


# do some piece of code for each element in the array

# EACH ITERATES (more rubyish)

# names.each do |name|
#   puts "When is your birthday #{name}?"
# end


sushi = ["fashion sandwich", "sashimi", "california roll"]

sushi.each do |sush|
  puts "sushi is yum"
  puts "I like to eat #{sush}"
end
