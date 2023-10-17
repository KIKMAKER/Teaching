# # CRUD ON ARRAYS
names = ["Terry", "Mojela", "Kana"]

# # Create
names << "Kiéran"
names.push("Jack")
names.insert(2, "Kim")
# puts names

# # Read
p names[2]
p names[-4]
# #(-6..5)

# # Update
puts names[0] = "Terrance"

# # Destroy
names.delete("Terrance")
names.delete_at(0)
# p names


# LOOP

# for loop

for num in (1..3)
  p num * 2
end

for name in names
  p name.upcase
end

# each

names.each do |name|
  puts "hello #{name}"
end
