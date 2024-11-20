# SINGLE BRANCH IF STATMENTS

# puts "whats your age?"
# age = gets.chomp.to_i

# everything in ruby is considered true unless it is false or nil
# if age.odd?
#   # puts "You are an odd age!"
# end

# # the opposites:

# if !age.odd?
#   # puts "You are an even age"
# end

# unless age.odd?
#   # puts "You are an even age"
# end


# written in one line:

# puts "You are an odd age" if age.odd?
# puts "You are an even age" unless age.odd?


# IF / ELSE
# TWO BRANCH IF STATEMENT


# if age.odd?

#   if age > 20
#     # puts "thats an adult odd age"
#   else
#     # puts "thats a child odd age"
#   end

# else
#   # puts "thats an even age"
# end

# written one line
# TERNARY OPERATOR

# puts age.odd? ? "odd age" : "even age"

# condition ? truthy_output : falsey_output


# puts "heads or tails?"
# choice = gets.chomp
# coin = ["heads", "tails"].sample

# result = (choice == coin) ? "winner" : "loser"
# puts "#{result}, that was #{coin}"


# IF / ELSIF / ELSIF / ELSIF .... ELSE
# MULTI-BRANCH IF STATEMENT

time_hour = 12
# p time_hour

# if time_hour < 12
#   puts "good morning"
# elsif time_hour > 18
#   puts "good evening"
# elsif time_hour >= 12
#   puts "good afternoon"

# end

# order of conditions matter!

# DRY : DON'T REPEAT YOURSELF


# Old school UI

# puts "What do you want to do? [code, run, stretch, cook]"
# user_choice = gets.chomp

# case user_choice
# when 'code'
#   puts "Entering coding mode"
# when 'run'
#   puts "go running then"
# when 'stretch'
#   puts "that's a good idea"
# when "cook"
#   puts "make me some"
# else
#   puts "thats not an option"
# end


# if user_choice == "code"
# elsif user_choice == "run"
# elsif user_choice == "cook"
# end


age = 13
time = 9

# if age < 16 && time < 9
#   puts 'good mornign child'
# elsif agg > 16 && time < 9
#   puts "good morning adult"
# elsif age < 16 && time > 12
#   puts "good afternoon child"
# end


hour = 8
# p time_hour

if (hour > 9 && hour < 12) || (hour > 14 && hour < 18)
  puts "The shop is opened!"
elsif hour >= 12 && hour < 14
  puts "closed for lunch"
else
  puts "the shop is closed"
end
