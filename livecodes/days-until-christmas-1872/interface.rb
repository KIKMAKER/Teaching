require_relative 'xmas.rb'
puts "Do you want to know how many days until xmas?"

puts "Which year are you thinking about?"


year = gets.chomp.to_i

# days = days_until_xmas(year)

puts "There are #{days_until_xmas(year)} days until christmas #{year}"
