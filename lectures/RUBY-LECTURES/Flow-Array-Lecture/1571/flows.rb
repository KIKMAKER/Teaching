# FLOWS

# If statement

# if condition
#   # do this
# end

puts "Whats your age?"
age = gets.chomp.to_i

if age >= 18
  puts "You can vote"
end

# opposite cases
if age != 18
  puts "You can maybe vote"
end

# unless condition is met don't run the code

unless age == nil
  puts "You can't vote"
end

puts "Cheerio"

# one liners

puts "You can vote" if age > 18
puts "You can't vote" if age >= 18
puts "You can't vote" unless age > 18

# conditions
  # greater than
  # less than
  # equal to
  # not equal to
  # nil (.nil?)
  # not nil
  # true
  # false

  if false
    Work around this code
  end

  if true
    puts "This better not have any errors because it will be executed ALWAYS"
  end



# Else

if age > 18
  puts "You can vote"
else
  puts "Sorry you are too young to vote"
end

# condition ? outcome_if_truthy : outcome_if_falsey

age > 18 ? "You can vote" : "You can't vote"


if age > 92
  puts "Stay home old man"
elsif age > 18
  puts "You can vote"
elsif age < 5
  puts "You are a genius please choose our president"
else
  puts "Sorry you are too young to vote"
end


# && and ||

puts "What should you do"
puts "Whats the time (hour)"
time = gets.chomp.to_i

if time > 9 && time < 11
  puts "you should be listening to Kiki talk"
elsif time > 18
  puts "You should be doing your flashcards"
elsif time > 11 || time < 17
  puts "you should be working on your challenges"
end

# Old school UI

puts "What do you want to do?"
action = gets.chomp.upcase

case action
when "READ"
  puts "Entering read mode"
when "WRITE" || "write"
  puts "ENTERING WRITE MODE"
when "SURF"
  puts "GO SURFING DUUUDE"
else
  puts "nothing programmed for that ma' dude"
end


# LOOPS

puts "Pick a number (from 1 to 5)"
choice = gets.chomp.to_i
number = (1..5).to_a.sample

p number

# While loop

# while condition_is_true
    # keep running the loop
# end

while choice != number
  puts "Incorrect, pick again"
  choice = gets.chomp.to_i
end
puts "Correct!"

num = 0

# until condition_is_true
  # keep running the loop
# end

until num == 3
  puts "Pick a number (from 1 to 5)"
  choice = gets.chomp.to_i
  number = (1..10).to_a.sample

  puts choice == number ? "You win" : "You lose"
  num += 1
  num = num + 1
end

puts "Chris's game is over"


# For loop

names = ["Pabi", "Cassie", "Sakkaf"]

for name in names
  puts "#{name} is a LW student"
end
