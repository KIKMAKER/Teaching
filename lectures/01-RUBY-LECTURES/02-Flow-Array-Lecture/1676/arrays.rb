# ARRAYS
# defined with square brackets, elements separated by a comma
beatles = ["john", "ringo", "seb"]
indexes = [   0  ,   1    ,   2  ]

# CRUD ON ARRAYS

# Create (an element)
beatles << "kiki"
beatles.push("meg")
beatles.insert(2, "luvo")

# p beatles
# Read (get an element)
# access elemensts of an array by their index
# puts beatles[1]
# puts beatles[0]
# puts beatles[2]
# p beatles[9] # returns nil


# Update
beatles[3] = "lou"

# p beatles

# Destroy
beatles.delete("kiki")
beatles.delete_at(3)

p beatles


# EACH

# print something for each beatle in the beatles array

# beatles.each do |beatle|
#   puts "This beatles name is #{beatle.upcase}"
# end

 beatles.each { |beatle| puts "This beatles name is #{beatle.upcase}" }
