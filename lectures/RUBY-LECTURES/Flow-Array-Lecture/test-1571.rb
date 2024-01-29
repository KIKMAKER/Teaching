
# puts "Find out what you should be doing..."
# puts ">"
# puts "What time is it? (hour)"

time = gets.chomp.to_i

if time < 9
  puts "You should be going to class"
elsif time > 18
  puts "Work on your flashcards"
elsif time < 17
  puts "Do your challenges"
elsif time > 17
  puts "Be brave in live code"
elsif time > 13
  puts "Maybe have some lunch"
elsif time > 9
  puts "You should be in a lecture"
end


