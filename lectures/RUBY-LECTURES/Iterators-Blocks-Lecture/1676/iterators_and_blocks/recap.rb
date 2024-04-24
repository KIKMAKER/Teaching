# CRUD ON ARRAYS
restaurants = ["Tali", "Timbuktu", "The Milk", "Steers", "Kloof Street House", "KFC"]
index      =  [   0   ,     1     ,    2     ,     3   ,       4          ,     -1   ]
# indexes go from -6..5

p restaurants.sort
puts restaurants.size
puts restaurants.index("The Milk")
puts restaurants.last
puts restaurants.first
# puts restaurants.second # not a method

# C
restaurants << "Nandos"
restaurants.push("another restaurant")
restaurants.insert(2, "Ganesh")


# R
puts restaurants[2]
puts restaurants[-4]
puts restaurants[-1]


# U
restaurants[5] = "Kentucky Fried Chicken"

p restaurants.shift
p restaurants.pop

# D
restaurants.delete_at(-1)
restaurants.delete("Steers")

p restaurants

# EACH

restaurants.each do |restaurant|
  # restaurant is a tempoarary variable representing each element in the array
  downcased_restos = restaurant.downcase
  puts "Everyone likes to eat at #{downcased_restos}"

end

puts downcased_restos
