# WHILE LOOP

# while condition
#   # execute the code
# end

price_to_find = rand(1..5)

# p price_to_find

choice = nil     # variable initialization
counter = 0

# while choice != price_to_find
#   puts "pick a number"
#   choice = gets.chomp.to_i
#   counter += 1
# end

# until choice == price_to_find
#   puts "pick a number"
#   choice = gets.chomp.to_i
#   counter += 1
# end

# p counter


# for num in [1, 2, 3]
#   puts num
# end

for animal in (0...6)
  puts animal.even
end
