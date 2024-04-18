HANDS = %w(rock paper scissors)

computer_hand = HANDS.sample

# p computer_hand

puts "Please choose your hand (#{HANDS.join(", ")})"
print "> "
player_hand = gets.chomp

while player_hand != ""

  if HANDS.include?(player_hand)
    puts "Let's go!"
    if computer_hand == player_hand
      puts "You both chose #{player_hand}, its a tie"
    else
      if computer_hand == "rock"
        player_wins = player_hand == "paper"
      elsif computer_hand == "paper"
        player_wins = player_hand == "scissors"
      elsif computer_hand == "scissors"
        player_wins = player_hand == "rock"
      end
      puts "You chose #{player_hand}"
      if player_wins
        puts "The computer chose #{computer_hand}, you win!"
      else
        puts "The computer chose #{computer_hand}, you lose!"
      end
    end
  else
    puts "That's not an option mate"
  end
  puts "Enter any key to play again, or press enter to exit"
  player_hand = gets.chomp
end
puts "GAME OVER"
