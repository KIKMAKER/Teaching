names = ["Ned", "Jennifer", "Matthew"]
# index = [  0  ,    1      ,    2     ]
# index = [  -3  ,   -2     ,    -1    ]


# CRUD OPERATIONS ON AN ARRAY

# Create (a new element of an array)
names.push("Sharon")

names << "Prince"

names.insert(2, "Kiki")

# p names

# Read (using the index)
names[2]
names[0]
names[-1]

# Update
names[3] = "Matt"

# Destroy
names.delete_at(2)

# more dangerous
names.delete("Kiki")

# p names


# new_names = ["Prince", "Kiki"]

# new_names.each do |new_name|
#   names << new_name
# end


sushi = ["fashion sandwich", "sashimi", "california roll"]

# sushi.each do |sush|
#   puts "sushi is yum"
#   puts "I like to eat #{sush}"
# end


# OTHER BUILT IN METHODS
p sushi.count
p sushi.size
p sushi.length

p sushi.empty?
p sushi.any?
p sushi.include?("sashimi")
