names = ["Terry Kapindu", "Mojela Ratsita", "Kana Mosia", "Kim", "Kiki"]
# ITERATORS



# EACH (basis of all other iterators)

names.each do |name|
  puts "hello #{name}"
end

# performs some piece of code
# doesn't return, just executes

# EACH WITH INDEX

names.each_with_index do |name, index|
  puts "#{index + 1} - #{name}"
end

# performs some piece of code considering the element and index
# doesn't return, just execute

# MAP

upcased_names = names.each do |name|
  name.upcase
end
p names
# unchanged
p upcased_names
# new array

# performs some piece of code
# returns a transformed array

surnames = names.map do |name|
  name.split[1]
end

# p surnames

counter = 0
names.each do |name|
  # counter = counter + 1
  counter += 1 if name.start_with?('K')
end

# p counter

# COUNT

names_with_k = names.count do |name|
  name.start_with?('K')
end
# p names_with_k

# evaluations a condition true or false and counts
# returns an integer

# SELECT / REJECT

names_with_k = names.select do |name|
  name.start_with?('K')
end
# # p names_with_k

names_with_k = names.reject do |name|
  name.start_with?('K')
end
# p names_with_k

# evaluations a condition true or false and rejects/selects based on the condition
# returns an array


# ASK YOURSELF WHEN CHOOSING A ITERATOR
# 1. what does it do
# 2. what does it return

# MULTILINE
# names.each do |name|
#   puts name
# end
​
# INLINE
# names.each { |name| puts name }
