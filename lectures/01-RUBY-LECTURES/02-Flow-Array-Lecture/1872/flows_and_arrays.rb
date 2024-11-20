# IF STATEMENTS
puts "How old are you?"

age = gets.chomp.to_i

if age > 18
  # only executed if the above condition is TRUTHY
  puts "You can vote"
end

# # IN ONE LINE

puts "You can vote" if age > 18

# return 0 if radius.negative?

# UNLESS

unless age > 18
  puts "You can't vote"
end

# IF / ELSE

if age > 18
  # only executed if the above condition is TRUTHY
  puts "You can vote"
# condition is something that could be true or false
else
  # this branch is executed in all other cases
  puts "you can't vote yet, you can vote in #{18 - age} years"
end

# puts "Have a nice day"

# IN ONE LINE / TERNERARY OPERATOR

age > 18 ? "you can vote" : "you can't vote"

# condition ? outcome_if_truthy : outcome_if_falsey

age.even? ? "hello" : "good bye"

# IF / ELSIF / ELSE

if age > 79
  puts "give us your wisdom old one"
elsif age == 73
  puts "you are 73"
elsif age > 49
  puts "Sorry boomer"
elsif age > 18
  puts "you can vote"
else
  puts "you can't vote"
end

puts "what do you have to say?"

string = gets.chomp

if string.include?('?')
  puts "silly question"
elsif string == "I'm going to work."
  puts "good job"
else
  puts "you said #{string}"
end

# CASE / WHEN

puts "What do you want to do? [surf|code|jol|sleep]"

action = gets.chomp

case action
when "surf"
  puts "Lets go surfing"
when "code"
  puts "go code"
when "jol"
  puts "PARTY!"
when "sleep"
  puts "good night"
else
  puts "that's not an option"
end

if action == "surf"
  puts "Lets gon surfing"
elsif action == "code"
  puts "Let's code!"
elsif action == "jol"
  puts "Lets party"
elsif action == "sleep"
  puts "Good night"
end

# LOOPING

# while conditional loop

puts "pick a number from 1-5"
user_choice = gets.chomp.to_i

computer_number = rand(1..5)
p computer_number

while user_choice != computer_number
  puts "try again"
  user_choice = gets.chomp.to_i
end

until user_choice == computer_number
  puts "try again"
  user_choice = gets.chomp.to_i
end

puts "thanks for playing"


# while true (until false)
# until true (while false)

for name in ["meg", "prince", "jt", "kiki"]
  # executes this code for each element
  puts "helloo #{name}"
  puts "how are you today #{name}?"
end


# each loop

names = ["meg", "prince", "jt", "kiki"]

names.each do |name|
  # puts "hello #{name}"
end

# ARRAYS

names = ["meg", "prince", "jt", "kiki"]
# index = [  0  ,    1    ,   2 ,   3   ]
p names
# CRUD


# CREATE
names << "Revyll"
names.push("Mehdi")


# READ (using the index)
p names[2]
p names[-1]

# UPDATE (need the index)
names[2] = "JT"

# Delete

names.delete("Revyll")

# safer
names.delete_at(3)

p names
