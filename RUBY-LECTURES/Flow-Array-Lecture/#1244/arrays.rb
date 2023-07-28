#ARRAYS
# CRUD

#CREATE
names = ['Dani', "Tassos", "Dewald", "Tanya" ]
index = [   0   ,   1    ,   2     ,    3    ]
# p names
names << "JT"
# p names
names.push("Ben")
# p names
names.insert(3, "Hadi")
# p names

# READ
p names[0]
p names[1]
p names[2]

p names[-1]
p names[-2]
p names.first

# UPDATE
names[3] = "Dani"
p names

# # DELETE
# names.delete('Dani')
# p names
names.delete_at(2)
p names


#ITERATOR
# instead of:
# puts "#{names[0]} is attending Le Wagon in Cape Town"
# puts "#{names[1]} is attending Le Wagon in Cape Town"
# puts "#{names[2]} is attending Le Wagon in Cape Town"
# puts "#{names[3]} is attending Le Wagon in Cape Town"

# old way to do it
# for name in names do
#   puts  "#{name} is attending Le Wagon in Cape Town"
#  end

names.each do |name|
 puts  "#{name} is attending Le Wagon in Cape Town"
end

# one line
names.each { |name| puts "#{name} is attending Le Wagon in Cape Town" }
