# EACH

names = ["Ndi", "Mmanare", "Janet", "Darian", "David"]
ages = [23, 29, 21, 35, 42]

# If we need the index
index = 0
names.each do |name|
  age = ages[index]
  puts "#{name} is a #{age} year old student"
  index += 1
end

# EACH_WITH_INDEX

names.each_with_index do |name, index|
  puts "the student at index #{index} is #{name}"
  puts "#{index + 1}. #{name} is a #{ages[index]} year old student"
end

# If we need the same array but transformed (changed)
# eg reversed_names = ["idN", ]

reversed_names = []

names.each do |name|
  reversed_names << name.reverse
end
# p reversed_names

# MAP

mapped_names = names.map do |name|
  name.reverse
end
# p names
# p mapped_names

# If we need to count how many meet some condition
names_with_d = 0

names.each do |name|
  if name.start_with?('D')
    names_with_d += 1
  end
end
# p names_with_d

# COUNT

names_with = names.count do |name|
  # count all of the names where this condition is true
  name.start_with?('D')
end

# p names_with

# If we need a new array with all the elements that meed a condition
array_of_names_with_d = []

names.each do |name|
  if name.start_with?('D')
    array_of_names_with_d << name
  end
end


# SELECT

array_of_names_with_j = names.select do |name|
  # selects name that meets this criteria (and makes a new array with it)
  name.start_with?('J')
end

p array_of_names_with_j

# If we need a new array with all the elements that don't meet a condition
array_of_names_without_d = []

names.each do |name|
  if !name.start_with?('D')
    array_of_names_without_d << name
  end
end

# REJECT
array_of_names_without_d = names.reject do |name|
  # rejects name that meets this criteria (and makes a new array with it)
  name.start_with?('D')
end

p array_of_names_without_d
