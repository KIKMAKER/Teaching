# CRUD ARRAYS
# define an array
array = []

cities = ["Pretoria", "Jeddah", "Knysna", "Johannesburg"]
index  = [    0     ,    1    ,     2    ,       3      ]
# Create
# cities.push("Lagos")
cities << "Lagos"
cities.insert(1, "Cape Town")

# method syntax
# 8.add(3)
# 8 + 3
# p cities

# Read
p cities[0]
p cities[1]
p cities[2]
p cities[-3]
p cities[-2]
p cities[-1]
p cities[2..-2]

cities.last
cities.first

# Update
cities[4] = "JHB"

# Destroy
# cities.delete("JHB")
# cities.delete_at(2)


# For Loop

for i in (1..6)
  # index = i - 1
  puts cities[i-1].upcase
end

for i in (0..cities.size)
  # index = i - 1
  puts cities[i-1].upcase
end

for city in cities
  puts city.upcase
end

# EACH
cities.each do |city|
  puts city.upcase
end



# cities.pop
# pop method "under the hood"
def pop(array)
  last_element = array(-1)
  array.delete(-1)
  return last_element
end
