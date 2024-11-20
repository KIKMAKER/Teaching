puts " #{'_' * 23}"
puts "| #{' ' * 21} |"
puts "| Welcome to the races! |"
puts "|#{'_' * 23}|"
puts " "

horses = ["Asterix", "Obelix", "Frank", "Petunia"]
user_balance = 100

puts "Today at the races we have:"
horses.each_with_index do |horse, index|
  puts "#{index + 1}. #{horse}"
end

# conditional loop until user_balance <= 10
# initialise play_again variable
play_again = "Y"
# START THE LOOP
until user_balance <= 10 || play_again == "N"
  puts "Pick your winner! (1 to #{horses.size})"

  users_horse = gets.chomp.to_i - 1
  puts "Bets are in!"
  puts "Let the race begin!"
  sleep(1)
  winning_horse = rand(0...horses.size)

  # betting logic
  if users_horse == winning_horse
    # update user_balance
    # user_balance = user_balance + 50

    user_balance += 50
    result = "won"
  else
    # update user_balance
    user_balance -= 10
    result = "lost"
  end
  puts "You #{result}, your balance is R#{user_balance}"

  if user_balance <= 10
    puts "you can't afford to keep betting"
  else
    puts "Do you want to bet again? [Y/N]"
    play_again = gets.chomp
  end

end
# END THE LOOP

puts "Thanks for joining the races, you walked away with R#{user_balance}"
