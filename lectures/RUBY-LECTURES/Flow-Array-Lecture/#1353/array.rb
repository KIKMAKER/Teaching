# CRUD

# # CREATE

names = ['Sinead', 'Precious', 'Kylle']
# names = [   0     ,     1     ,    2  ]

# puts names

# Add to the array
names.push('Pascal')
names << 'Tori'

# puts names

# # READ

# p names[0]
# p names[1]
# p names[2]
# p names[3]
# p names[4]
# p names[5]

# p names[-1]

# p names.first
# p names.last


# # UPDATE

# names[0] = 'Sinéad'

# p names.first
# p names

# # DELETE

# # names.delete(["more", "names"])
# names.delete_at(3)


# p names

# for name in names
#   #do something to each name
# end

# names.each do |name|
#   # something to each name
# end

names.each do |name|
  p name.upcase
end


names.each { |name| p name.downcase }

p names.sort
