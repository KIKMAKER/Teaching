# IF STATEMENT

condition = 5 > 3

# if condition
#   # execute code
# end


# if condition
#   puts "I am true"
# end

# puts "how old are you"

# age = gets.chomp.to_i

# if age > 13
#   puts "You can enter the teen club"
# end


# if age < 13
#   puts "You have to stay outside"
# else
#   puts "You can enter the teen club"
# end


# UNLESS STATEMENT

# unless age > 13
#   puts "You have to stay outside"
# end

# unless age > 13
#   puts "You have to stay outside"
# else
#   puts "You can enter the teen club"
# end


# if age != 13
#   puts "You have to stay outside"
# end


# p condition ? ["code if truthy"] : "code if falsey"
# puts condition ? "code if truthy" : "code if falsey"


# puts "heads or tails?"
# choice = gets.chomp
# coin = ["heads", "tails"].sample
# # %w[heads tails]


# result = (choice == coin) ? "winner" : "loser"

# puts "#{result}, that was #{coin}"

# if age > 75
#   p "You are too old to be a member of a modern democracy"
# elsif  age > 16
#   p "You can vote"
# else
#   p "I guess you are too young"
# end

# if age > 75 && age < 16
#   p "you can't vote"
# else
#   p "you can vote"
# end


# CASE WHEN

puts 'What do you want to do?'
action = gets.chomp

if action == 'READ'
  puts 'You can start reading'
elsif action == 'CODE'
  puts 'You can start coding'
elsif action == 'EAT'
  puts 'Start lunch'
else
  puts 'No value'
end


case action
when 'READ'
  puts 'You can start reading'
when 'CODE'
  puts 'You can start coding'
when 'EAT'
  puts 'Start lunch'
else
  puts 'No value'
end


# inline if / unless statements

# result if condition
# other_result unless condition


