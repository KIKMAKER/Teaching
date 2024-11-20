# IF

# condition = 3 > 5

# # if !condition
# #   puts "it's falsey"
# # end

# unless condition
#   puts "it's falsey"
# end

# if condition
#   puts "it's truthy"
# else
#   puts "it's falsey"
# # end


# puts "What is your age?"
# age = gets.chomp.to_i

# if age > 36
#   puts "get off tiktok"
# else
#   puts "whats your tiktok?"
# end

# puts "fin"

# puts "heads or tails"

# choice = gets.chomp

# # condition = choice == "heads"

# choice == "heads" ? (puts "that has hair") : (puts "thats at the bottom")


# puts "What is your age?"
# age = gets.chomp.to_i


# if age < 12
#   puts "enjoy learning"
# elsif age > 78
#   puts "enjoy resting"
# elsif age > 45
#   puts "enjoy teaching"
# else
#   puts "enjoy life"
# end

# CASE / WHEN

# puts "What do you want to do? [RUN, WALK, SWIM]"

# choice = gets.chomp.upcase

# case choice
# when "RUN"
#   puts "start running"
# when "WALK"
#   puts "start walking"
# when "SWIM"
#   puts "start swimming"
# else
#   puts "incorrect input"
# end

# puts "the end" if choice

# LOOPING

price_to_find = rand(1..5)
# puts price_to_find
# initiliaze the variable
choice = 0

# while choice != price_to_find
#   puts "What is the price?"
#   choice = gets.chomp.to_i
# end


# until choice == price_to_find
#   puts "What is the price?"
#   choice = gets.chomp.to_i
# end

# puts "You got it!"

for x in [1, 2, 3, 4, 99]
  # puts "printing the square of #{x}"
  # puts x * x
end

for name in ["Xhanti", "Samuel", "JP"]
  # code to be repeated for each element in the array
  puts "Hello #{name}"
end

