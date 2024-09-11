# Pseudo-code:
# 1. Print welcome and the horses names
puts "Welcome to the races!"
puts "Racing today:"

# create the horses array
horses = ["Wind-rider", "Star chaser", "Goofy"]
# index =  [   0        ,    1         ,    2   ]

# go through each horse and print (puts) the number and name
# 1 - Wind-rider
# 2 - Star chaser
# 3 - Goofy

horses.each_with_index do |horse, index|
  # humanising the array index
  puts "#{index + 1}. #{horse}🐴"
end


# 2. Get user's bet
# Ask the user which horse they bet on (pick a number?)
puts "Which horse would you like to bet on? Pick a number."
# Get the answer and store it in a variable
users_bet = gets.chomp.to_i

# find the users horse based on it's index
users_horse = horses[users_bet - 1]

# p users_horse

# 3. Run the race 🐴
# get the computer to pick a random horse from the array
winner = horses.sample

# random_index = rand(0..horses.count - 1)
# winner = horses[random_index]

# p winner
# check if the users horse is the winning horse
if users_horse == winner
  # if it is store the result as "winner"
  result = "won"
else
  result = "lost"
end

# 4. Print results

puts "You #{result}, the winning horse was #{winner}."
