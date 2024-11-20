# 1. Print welcome
puts " #{'_' * 23}"
puts "| #{' ' * 21} |"
puts "| Welcome to the races! |"
puts "|#{'_' * 23}|"
puts " "
# 1.1 create an array of horses names
horses = ["Asterix", "Obelix", "Frank", "Petunia"]
# indices = [  0    ,     1     ,    2   ,   3     ]
# 1.2.1 print (puts) a numbered (index) list of horses *each* horses name (there are many types of iterators)
#  > 1. Asterix
#  > 2. Obelix
#  > 3. Frank
#  > 4. Petunia

puts "Today at the races we have:"
horses.each_with_index do |horse, index|
  # humanizing the array index
  puts "#{index + 1}. #{horse}"
end

# 2. Get user's bet
# ask the user which number horse they bet on (and store it in a variable)
puts "Pick your winner! (1 to #{horses.size})"

# arrayify the users choice
users_horse = gets.chomp.to_i - 1
# TWO OPTIONS
# 1. CHANGE TO HORSE
# users_horse = horses[users_bet]
# p users_horse

# 2. KEEP AS INDEX
# users_horse = gets.chomp.to_i - 1

# 3. Run the race 🐴
puts "Bets are in!"
puts "Let the race begin!"
sleep(1)
# 3.1 get the computer to pick a random / sample horse from the array
# TWO OPTIONS
# 1. WINNER AS HORSE
winning_horse = horses.sample
# 2. WINNER AS INDEX
winning_horse = rand(0...horses.size)
# p winning_horse


# 3.2 compare the users_bet with the winner
# 4. Print results
# 4.1 if the user_bet is the same (equivalent) to the winner print "you won"
if users_horse == winning_horse
  result = "won"
else
  # else "you lost"
  result = "lost"
end

puts "You #{result}"
