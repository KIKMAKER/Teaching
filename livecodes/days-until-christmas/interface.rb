# require_relative '..../ruby/calculations/days/xmas.rb'
require_relative 'xmas.rb'

puts "what is the day today"
day = gets.chomp.to_i
p day
puts "what is the month today"
month = gets.chomp.to_i
puts "what is the year today"
year = gets.chomp.to_i

puts days_until_xmas(year, month, day)
