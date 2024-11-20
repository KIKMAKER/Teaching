# ARRAYS

names = ["Janet", "Darian", "Mmanare"]
# index = [  0   ,    1    ,    2     ]

# CRUD

# Read
# Access elements of an array with their INDEX
p names[1]
p names[2]

# Create
# create a new element in the array
names << "Ndi"
# names.push("Ndi")

names.insert(1, "David")


# Update
# Use the index to find and replace the element
names[4] = "ndivhuwo"

# p names


# Destroy
# Two ways:
names.delete("david") # less safe

names.delete_at(0) # more safe

p names

# Loop over an array with EACH
# EACH is called an ITERATOR

names.each do |name|
  puts "Welcome #{name.upcase}."
end
