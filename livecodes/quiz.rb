def adding(number_1, number_2, number_3)
  return sum = number_1 + number_2 + number_3
  sum.to_s
end

# p adding(5, 9, 11)

# age = 42

# if age >= 21 # if evaluates a condition
#   puts "You can vote"
# elsif age < 2
#   puts "you are still a child,"
# else
#   puts "You can't vote"
# end


# "You can vote" if age >= 18


# age >= 18 ? "You can vote" : "You can't vote"


# Complete the following code to compute the exact average of students grades (using each ).

grades = [19, 8, 11, 15, 13]
# TODO: compute and store the result in a variable `average`

# 1. what data are we working with?

# average = add all the elements / number of elements

# sum = 0

# grades.each do |grade|
#   sum += grade
# end

# sum.fdiv(grades.size)


# def capitalize_name(first_name, last_name)
#   "#{first_name.capitalize} #{last_name.capitalize}"
# end

# p capitalize_name("kiki", "kennedy")


# fruits = ["banana", "peach", "watermelon", "orange"]
# # index  = [   0    ,    1    ,   2       ,     3    ]

# # Print out "peach" from the fruits array in the terminal
# fruits[1]

# # Add an "apple" to the fruits array
# fruits << "apple"

# # Replace "watermelon" by "pear"
# fruits[2] = "pear"

# # Delete "orange"
# p fruits.pop
# # p fruits


# city = { name: "Paris", population: 2000000 }

# # Print out the name of the city
# # p city["name"]

# # Add the Eiffel Tower to city with the `:monument` key

# city[:monument] = "Eiffel Tower"
# # p city
# # Update the population to 2000001

# city[:population] = 2000001
# p city

# # What will the following code return?
# p city[:mayor]


students = [ [ "john", 28 ], [ "mary", 25 ], [ "paul", 21 ] ]

# TODO: Convert the array of arrays into an array of hashes.
# array = [ ["name", age], ...]

# array = [ {name: "name", age: XX}  ]


hash = students.map { |student| { name: student[0], age: student[1] } }
p hash
