# Pseudo-code:
# 1. Print welcome and the horses names
puts "Welcome to the races!"
puts "Racing today:"

horses = ["Wind-rider", "Star chaser", "Goofy"]
user_balance = 100
play_again = ""

# START THE LOOP
until play_again == "N"

  horses.each_with_index do |horse, index|
    puts "#{index + 1}. #{horse}🐴"
  end

  # 2. Get user's bet
  puts "Which horse would you like to bet on? Pick a number."
  users_bet = gets.chomp.to_i
  users_horse = horses[users_bet - 1]

  # 3. Run the race 🐴
  winner = horses.sample

  puts "And they're off!"
  sleep(1)
  puts "It's neck and neck!"
  sleep(1)
  puts "The winning horse was #{winner}."
  sleep(1)

  # 4. Print results
  if users_horse == winner
    # add the winning amount to the user balance
    # user_balance = user_balance + 50

    user_balance += 10
    puts "Congratulations you won! Your balance is now $#{user_balance}."
  else
    # subtract the losing amount from the users balance
    user_balance -= 50
    puts "Sorry #{users_horse} didn't win. Your balance is now $#{user_balance}."
    puts "Better luck next time."
  end
  # check what the user balance is, if it's enough to play
  if user_balance >= 50
    # ask the user if they want to play again
    puts "Play again? [Y/N]"
    play_again = gets.chomp.upcase
  else
    # if not, break the loop
    
    play_again = "N"
  end

end

# display exit message
puts "Hope you enjoyed the races"
