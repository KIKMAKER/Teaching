# ARRAYS

names = ["Xhanti", "Samuel", "JP"]
index = [   0    ,    1    ,   2 ]
# p names

# CRUD

# Create
names << "Ash"
# p names

names.push("Bernie")
# p names

names.insert(1, "TJ")
# p names

# Read

# puts names[1]
# puts names[0]
# puts names[2]
# p names[15]

# puts names[-1]

# puts names[1..2]


# Update

names[-2] = "Ashley"
# p names

# p names.index("Bernie")

names[names.index("Bernie")] = "Bernard"
# p names


# Delete
names.delete_at(1)

names.delete("Bernard")
# p names


# EACH

names.each do |name|
  puts "Hello #{name}"
  puts "Are you having fun?"
end


# names.each { |name| puts "Hello #{name}. are you having fun?" }
