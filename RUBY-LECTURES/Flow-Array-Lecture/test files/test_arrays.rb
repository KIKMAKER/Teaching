# ARRAYS

# CRUD Actions

# CREATE
names = ["Dani", "Ben", "Tanya", "Tassos", "Dewald"]
#index =[    0 ,   1  ,   2    ,   3     ,    4    ]
# p names
#Add new elements
names << "Dani"
# p names
names.push("JT")
# p names

names.insert(3, "Liam")
# p names

#READ
# p names[0]
# p names[1]
# p names[2]

#UPDATE
names[3] = "Kiki"
p names

#DELETE
#Don't
# names.delete('Kiki')
# # p names
# #Deletes all instances of that element
# names.delete('Dani')
# p names

# names.delete_at(2)
p names

names.delete_at(-2)
p names


#---------------------------------#


