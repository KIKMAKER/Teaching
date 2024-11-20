# ARRAYS

fruits = ["apple", "pear", "grapes", "kiwi", "banana"]
# index = [    0    ,    1  ,   2   ,   3    ,     4   ]


# READ

kiwi = fruits[3]
p kiwi

last_fruit = fruits[-1]
p last_fruit

fruits.first == fruits[0]
fruits.last == fruits[-1]


# CREATE

fruits << "avocado"

fruits.insert(3, "strawberry")

# UPDATE

fruits[6] = "avo"

# DESTROY

# deletes all instances that match "avo"
# i.e dangerous!
# fruits.delete("avo")

# more specific
fruits.delete_at(2)

# removes and returns the last element
# p fruits.pop

# removes and returns the first element
# p fruits.shift

# p fruits


fruits.each do |fruit|
  puts "Adding #{fruit} to the fruit salad"
end
