# IF

puts "what is your age?"
age = gets.chomp.to_i

condition = age >= 18

# p condition # returns true or false

if age >= 18
  puts "You can vote"
end

# one liner:
puts "you can vote" if age >= 18

# IF / ELSE
puts "Welcome to the voting station"
if condition # i.e age >= 18
  puts "You can vote"
else
  puts "Sorry you can't vote yet, you can vote in #{18 - age} years."
end
puts "have a nice day"

# one liner = TERNARY OPERATOR
puts age >= 18 ? "can vote" :  "sorry too young"

puts age.even? ?  "age is even" :  "what an odd age"

# UNLESS

puts "Welcome to the voting station"
unless !condition
  puts "Sorry you can't vote yet, you can vote in #{18 - age} years."
else
  puts "You can vote"
end

puts "have a nice day"

# IF / ELSIF / ELSE

puts "Whats the time (hour)?"
hour = gets.chomp.to_i

if hour < 12
  puts "Good morning!"
elsif hour >= 20
  puts "Good night!"
elsif hour > 12
  puts "Good afternoon!"
else
  puts "Lunch time!"
end

# TWO CONDITIONS && ||

if age > 18 && action == "videogame"
  puts "You are an adult, do what you want"

elsif age < 18 && action == "videogame"
  puts "You should do some homework too"

elsif age > 18 && action == "read" || action == "write"
  puts "thats a nice way to spend your time"

end


# CASE / WHEN
# another type of conditional statement, when we are comparing the same thing

puts "what do you want to do [read, write, run, videogame]?"
action = gets.chomp

# Types of comparisons:

# greater than >
# less than <
# greater than or equal to >=
# less than or equal to <=
# exactly the same as ==

# instead of this:
# if action == "read"
#   puts "entering reading mode"
# elsif action == "write"
#   puts "entering writing mode"
# elsif action == "run"
#   puts "entering running mode"
# elsif action == "videogame"
#   puts "entering gaming mode"
# end

# do this:
case action
when 'read'
  puts "entering reading mode"
when 'write'
  puts "entering writing mode"
when 'run'
  puts "entering running mode"
when 'videogame'
  puts "entering gaming mode"
else
  puts "thats not an option"
end

# # CONDITIONAL LOOPS
# # keep running based on whether a condition is true / false

# # step 1 force myself into the loop
action = 'not quit'

# UNTIL THE CONDITION IS TRUE (i,e WHILE THE CONDITION IS FALSE)

until action == 'quit'
  puts "what do you want to do [read, write, run, videogame]? quit to exit"
  action = gets.chomp

  case action
  when 'read'
    puts "entering reading mode"
  when 'write'
    puts "entering writing mode"
  when 'run'
    puts "entering running mode"
  when 'videogame'
    puts "entering gaming mode"
  else
    puts "thats not an option"
  end
end


# WHILE THE CONDITION IS TRUE (i,e UNTIL THE CONDITION IS FALSE)
while action != 'quit'
  puts "what do you want to do [read, write, run, videogame]? quit to exit"
  action = gets.chomp

  case action
  when 'read'
    puts "entering reading mode"
  when 'write'
    puts "entering writing mode"
  when 'run'
    puts "entering running mode"
  when 'videogame'
    puts "entering gaming mode"
  else
    puts "thats not an option"
  end

end

# FINITE LOOPS
# Loop over an array

for num in [14, 42, 53 ]
  puts "#{num}. Hello"
end

for name in ["Janet", "Darian", "Mmanare"]
  puts "Welcome #{name}"
end

names = ["Janet", "Darian", "Mmanare"]

for name in names
  puts "Howzit #{name}!"
end
