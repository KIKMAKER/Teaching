# IF STATEMENTS

condition = 3 > 5

if condition
  #code if condition is truthy
  p "the condition is true"
end

age = 35

condition = age > 18


# if condition
#   "you can vote"
# end

# if condition
#   p "you can vote"
# else
#   p "sorry too young"
# end

# !condition

# if !condition
#   p "too young to vote"
# else
#   p "You can vote"
# end

#unless

# unless condition
#   p "too young to vote"
# else
#   p "You can vote"
# end

# ternerary operator

# p age > 18 ? "You can vote" : "You are too young to vote"


# COIN TOSS
# puts "pick a coin"
# print ">"
# coin = gets.chomp

# toss = ["heads", "tails"].sample

# p toss

# if coin == toss
#   p "You win"
# else
#   p "You lose"
# end

# result = coin == toss ? "You win" : "You lose"

# puts "#{result}, that was #{toss}"


# IF / ELSIF / ELSE

# puts "what's your age?"

# age = gets.chomp.to_i

# if age > 90
#   p "Please vote old enlightened one"
# elsif age > 50
#   puts "Too old mate"
# elsif age >= 18
#   puts "you can vote"
# else
#   puts "You can't vote"
# end

# CASE / WHEN / ELSE

# puts "What do you want to do?"
# response = gets.chomp

# case response
# when "read"
#   puts "You are in READ mode"
# when "write"
#   puts "You are in WRITE mode"
# when "yoga"
#   puts "You are in YOGA mode"
# else
#   puts "that is not an option"
# end

# p "You can vote" if age > 17
# p "You can't vote" unless age >= 18

# hour = 20
# if hour > 9 && hour < 12 || hour > 14 && hour < 18
#   puts "The shop is opened!"
# else
#   puts "Sorry, the shop is closed..."
# end

# LOOPING

# while loop
# while condition
#   # execute
# end

# price_to_find = rand(1..5)
# p price_to_find
# choice = nil     # variable initialization

# while choice != price_to_find
#   puts "How much (between $1 and $5)?"
#   choice = gets.chomp.to_i
# end


# until choice == price_to_find
#   puts "How much (between $1 and $5)?"
#   choice = gets.chomp.to_i
# end

# puts "You won! Price was #{price_to_find}$"

names = ["harry", "john", "sam"]

for name in names
  puts "the persons name is #{name}"
end
