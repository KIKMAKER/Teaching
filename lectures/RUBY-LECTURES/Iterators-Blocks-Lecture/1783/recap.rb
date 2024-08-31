restaurants = ["Ocean Basket", "Nandos", "Spur", "Mugg & Bean"]
# index    =  [    0         ,      1  ,    2   ,     3       ]
# index    =  [    -4        ,     -3  ,   -2   ,     -1      ]

# built in methods
restaurants.shuffle
restaurants.sample
restaurants.sort
restaurants.join(', ')

# CRUD

# Create
restaurants << "Nolz Kitchen"
restaurants.insert(1, "Madame Baker")

# Read

p restaurants[-1]
p restaurants[3]
p restaurants.last

p restaurants[0]
p restaurants[-4]
p restaurants.first

# Update

restaurants[4] = "Wimpy"

# Destroy
restaurants.delete_at(-1)
# p restaurants

puts restaurants.pop
# p restaurants
puts restaurants.shift
# p restaurants

# imaginary
def pop
  item = array[-1]
  array.delete_at(-1)
  return item
end

restaurants.each do |restaurant|
  puts "I have eaten at #{restaurant}"
end

# NOTE ON HOW BLOCKS ARE LIKE ARGUMENTS TO A METHOD
restaurants.each { |restaurant| puts "I have eaten at #{restaurant}" }

# do (restaurant)
#   puts "I have eaten at #{restaurant}"
# end


# !!!!!
# opposite condition
age = 21
if !age.even?
  puts "uneven"
end

# destructive method
name = "david"
name.upcase

name.upcase!
