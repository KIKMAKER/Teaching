# 1. Print welcome and the horses names
puts " #{'_' * 23}"
puts "| #{' ' * 21} |"
puts "| Welcome to the races! |"
puts "|#{'_' * 23}|"
puts " "
horses = ["BoJack Man", "Happy-Go-Lucky", "Jupiter", "Hulk", "Way2Fast"]
balance = 100

# START LOOP (maybe initialise a variable?)
# condition based on play_again
play_again = "Y"
while play_again == "Y"
  # 2. Get user's bet
  # 2.1 Ask the user who they want to bet on
  puts "Pick a horse:"
  # 2.2 Print the list of each horses name (numbered)
  # eg:
  horses.each_with_index do |horse, index|
    # 1. BoJack
    # humanizing the array index
    puts "#{index + 1}. #{horse}"
  end
  # 2.3 Get the answer and store it in a variable (# ARRAYS START AT 0)
  # arrayify the users choice
  horse_index = gets.chomp.to_i - 1
  # users_horse = horses[horse_index]
  # p horse_index
  # 3. Run the race 🐴

  # 3.1 get the computer to choose a winner (a random horse)
  winner = horses.sample
  # p winner
  # 3.2 check if the users bet is equivalent to the winner
  # if it is result = "won"
  if horses[horse_index] == winner
    # increment the balance
    balance += 10
    result = "won, well done"
  else
    # decrement the balance
    balance -= 10
    # if it's not result = "lost"
    result = "lost, boohooo"
  end

  # 4. Print results
  puts "#{winner} won the race, you #{result}!"
  # check if the user has at least 10
  # if they do ask if they want to play again
  if balance >= 10
    puts "Your balance is #{balance} do you want to bet again? [Y/N]"
    play_again = gets.chomp.upcase
  else
    #if not tell them their money is up
    puts "Your balance is #{balance}, you have insufficient funds to bet."
    play_again = "N"
  end

end

# END LOOP

# print an exit message
puts "Hope you had fun at the races"
