fruits = ["apple", "pear", "grapes", "kiwi", "banana"]

# EACH_WITH_INDEX
puts "On sale today we have:"

fruits.each_with_index do |fruit, index|
  # puts "#{index} - #{fruit}" if index.even?
end


# MAP
# returns a NEW array of transformed elements

upcased_fruits = fruits.map do |fruit|
  "#{fruit.upcase} IS THE BEST"
end

# p upcased_fruits
# p fruits

# COUNT
# returns the number of elements that meet a condition

number_of_long_named_fruits = fruits.count do |fruit|
  # apply any condition to each fruit
  fruit.length > 4
  # counts the elements for which this is TRUTHY
  # (condition applied automatically no need for if!)
end

fruits.count

p number_of_long_named_fruits


# SELECT
# returns a new array of elements that meet the condition
long_named_fruits = fruits.select do |fruit|
  # state the condition here
  fruit.length > 4
end

p long_named_fruits

long_named_fruits = []

fruits.each do |fruit|
  if fruit.length > 4
    long_named_fruits << fruit
  end
end


# REJECT
# returns a new array of elements that meet the condition
short_named_fruits = fruits.reject do |fruit|
  # state the condition here
  fruit.length > 4
end

p short_named_fruits
