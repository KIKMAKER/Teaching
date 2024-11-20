# CRUD

# Arrays

animals = ["giraffe", "koala", "panda", "moose"]
# array_index = [  0  ,    1    ,    2  ,   3    ]
# array_index = [  -4  ,    -3    ,    -2  ,   -1   ]


# # CREATE
# animals << "tiger"
# animals.insert(2, "elephant")

# # READ
# p animals[0]
# animals.first
# p animals[-1]
# animals.last


# # UPDATE

# animals[-2] = "llama"

# p animals

# # DELETE / DESTROY

# animals.delete_at(1)
# animals.delete("llama")
# p animals


# HASH

store = {
  "pen" => 12,
  "calculator" => 30,
  "highlighter" => 15
}

pen = {
  make: "lamy",
  colour: "black",
  type: "fountain pen"
}


# # CRUD

# # Create
# store["scissors"] = 20
# pen[:price] = 13.5

# # Read
# p store["pen"]

# p pen[:make]


# # Update

# store["pen"] = 13.5


# pen[:make] = "Parker"
# # p pen

# p store

# # Delete
# store.delete("pen")
# p store

# p store["pen"]


# ITERATION

animals.each do |animal|
  # p "write any I want, which will be repeated as many times as there are animals in the array"
  # p "I have access to each #{animal} with the variable 'animal'"
  # p animal
end


store.each do |key, value|
  puts "A #{key} costs R#{value}"
end


