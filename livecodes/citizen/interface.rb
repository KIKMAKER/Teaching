require_relative 'citizen'

puts 'Welcome to the country!'

puts 'What is your first name?'
first_name = gets.chomp
puts 'What is your last name?'
last_name = gets.chomp
puts 'What is your age?'
age = gets.chomp.to_i


new_citizen = Citizen.new(first_name, last_name, age)
puts "Creating your citizenship #{new_citizen.first_name}"

p new_citizen

puts "Hello #{new_citizen.full_name}, you #{new_citizen.can_vote? ? 'can vote' : "can't vote"}."

puts "You #{new_citizen.can_play? ? 'can play' : "can't play"}."

puts "If you got married give us your new last name"
new_last_name = gets.chomp

new_citizen.last_name = new_last_name

p new_citizen
