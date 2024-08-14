## ARRAYS

# CRUD

# CREATE
# array_index = [ 0 , 1 , 2 , 3 ]
# array_index = [ -4 , -3 , -2 , -1 ]

names = ["Siya"]
names.push("Shawn")
names << "Ricardo"
# p names
names.insert(1, "carine")
# names.insert(3, "Carine")

# users_name = gets.chomp
# names << users_name

# p names

# READ
# p names[0]
# p names[1]
# p names[2]
# p names[3]
# p names[4]


# UPDATE
names[1] = "Carine"

# DESTROY
# p names
# names.delete("Carine")
# names.delete_at(-1)


# p names


# EACH
p names
counter = 0

# names = names.each do |name|
#   counter += 1
#   p name.upcase
# end

names.each { |name| name.upcase }

p counter
p names.size

p names
