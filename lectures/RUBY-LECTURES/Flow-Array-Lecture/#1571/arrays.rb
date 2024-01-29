# ARRAYS


# CRUD OPERATION

# Create

# empty_array = []
# array = [1, "student", ["one", "two", "three"]]

names = ["Hugo", "Liam", "JT"]
# index = [ 0 , 1 , 2]
puts names

names << "Kiki"
names.push("Jess")
names.push("Kiki", 0)
names.insert(2, "Chris")
# puts names

# Read
puts names[0]
puts names[3]

# Update

names[3] = "Justin"
# p names

# Destroy

# names.delete("Kiki")
names.delete_at(-1)
# puts names

## ITERATORS

# EACH

names.each do |name|
  puts "#{name.upcase} IS A LEGEND"
end
