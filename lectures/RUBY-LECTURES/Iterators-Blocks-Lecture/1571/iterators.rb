# ITERATORS
friends = ["Ross", "Rachel", "Chandler",
          "Monica", "Phoebe", "Joey", "ryan"]

# Each with Index
puts "My favourite friends in order:"
indexed = friends.each_with_index do |friend, index|
  puts "#{index + 1} - #{friend}"
end
# p indexed
# puts friends

# Map - returns a new array with the transformed elements

new_array = []

friends.each do |friend|
  new_array << friend
end

upcased_friends = friends.map do |friend|
  friend.upcase
end

# p friends
# p upcased_friends


# Count

counter = 0

friends.each do |friend|
  if friend.start_with?('r') || friend.start_with?('R')
    counter += 1
  end
end

# p counter

friends_with_r = friends.count do |friend|
  # some condition
  friend.start_with?("R")
end

# p friends_with_r


# Select

friends_with_r = friends.select do |friend|
  # some condition
  friend.start_with?("R")
end

p friends_with_r


# Other ones

# include?

puts friends.include?("Gunther")
