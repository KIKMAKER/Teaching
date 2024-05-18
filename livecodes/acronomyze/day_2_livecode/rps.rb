
HANDS = ["rock", "paper", "scissors"]

# computer picks from HANDS (sample)
computer_hand = HANDS.sample
choice = nil # Initialise a variable that will be reassigned later

# Ask user to choose a hand (loop until user givesa a valid answer)
loop do
  puts "please choose your hand (rock, paper, scissors)"
  # downcase the response to make sure it matches our computers hand
  choice = gets.chomp.downcase

# check if user input is valid
  if HANDS.include?(choice)
    break
  else
    puts "wrong choice"
  end
end

# compare both hands - outcome/result based on rules
if computer_hand == choice
  puts "draw"
else
  if computer_hand == "rock"
    # return true if the player chose paper
    player_wins = choice == "paper"
  elsif computer_hand == "scissors"
    player_wins = choice == "rock"
  elsif computer_hand == "paper"
    player_wins = choice == "scissors"
  end

  if player_wins
    puts "you won, computer chose #{computer_hand}"
  else
    puts "You lose, computer chose #{computer_hand}. Better luck next time..."
  end
end
