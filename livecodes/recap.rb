# Complete the following code to compute the exact average of students grades (using each ).


grades = [19, 8, 11, 15, 13]
# TODO: compute and store the result in a variable `average`

# average = sum / size

sum = 0

grades.each do |grade|
  sum += grade
end

# average = sum.to_f / grades.size
average = sum.fdiv(grades.count)


# p average


# Define a capitalize_name method which takes first_name and last_name as parameters
# and returns the well-formatted fullname (with capitalized first and last names).

def capitalize_name(first_name, last_name)
  first_name = first_name.capitalize
  last_name = last_name.capitalize

  # first_name + " " + last_name + "."
  "#{first_name} #{last_name}"

end

# puts capitalize_name("kiKi", "keNNedy")



fruits = ["banana", "peach", "watermelon", "orange"]

# Print out "peach" from the fruits array in the terminal
# puts fruits[1]

# Add an "apple" to the fruits array
fruits << "apple"

# Replace "watermelon" by "pear"
# update
# fruits[2] = "pear"

# Delete "orange"
fruits.delete_at(3)
fruits.delete("orange")




# city = { name: "Paris", population: 2000000 }

# # Print out the name of the city
# # puts city[:name]

# # Add the Eiffel Tower to city with the `:monument` key
# city[:monument] = "Eiffel Tower"

# # Update the population to 2000001
# city[:population] = 200001

# # What will the following code return?
# city[:mayor]


students = [ [ "john", 28 ], [ "mary", 25 ], [ "paul", 21 ] ]
# students = [{ name: "john", age: 28 }, ]

# TODO: Convert the array of arrays into an array of hashes.

new_array = students.map do |student|
  # p student
{ name: student[0], age: student[1] }
end
puts new_array
