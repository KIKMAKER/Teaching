# VARIABLE

# named piece of data
# we assign the value 35 to the variable 'age'
age = 35

# declare a variable so that we can reuse it, and apply methods to it

age += 1

age.even?

# don't need to remember the value / keep track of it, as it's stored in the name


# METHOD

# named block of code
# organise / neaten or code / keep it DRY

# anytime you need to apply the same bit of code over and over again
# store it in a method instead

def multiply(x, y)  # TODO: define a method called multily which takes two parameters x, y
                    # The parameters define the additional information the method needs to run
  return x * y      # TODO: returns the product of the parameters x and y
end                 # TODO: marks the end of the method definition

# puts multiply(5, 8) # TODO: call the method with arguments 5 and 8 (i.e 40) and print (puts) the result

# def tomorrow
#   puts Date.today + 1
# end

# tomorrow

# IF
# if evaluates a condition and runs code depending on whether the condition is met or not (truthy / falsey)


# TODO: write some code with `if`
age = 19

# # if age.even?
# #   puts "you are an even age"
# # else
# #   puts "you are an odd age"
# # end

# if age > 18
#   puts "you can vote"
# else
#   puts "you can't vote"
# end

# EACH
# Complete the following code to compute the exact average of students grades (using each ).
grades = [19, 8, 11, 15, 13]
# TODO: compute and store the result in a variable `average`

# initialise a counter
sum = 0
# iterate over the grades
grades.each do |grade|
  # add each grade to the sum (increment the sum by the grade)
  # sum = sum + grade
  # 1. sum = 0 + 19
  # 2. sum = 19 + 8
  # 3. sum = 27 + 11
  # ...
  sum += grade
end

# divide the sum by the number of grades in the array
# average = sum.to_f/grades.count
average = sum.fdiv(grades.count)
puts average


# Define a capitalize_name method which takes first_name and last_name as parameters and returns the well-formatted fullname (with capitalized first and last names).

def capitalize_name(first_name, last_name)
  # first_name.capitalize + " " + last_name.capitalize
  # OR
  full_name = "#{first_name.capitalize} #{last_name.capitalize}"
  return full_name
end


# What’s the difference between concatenation and interpolation? Give an example.
# Concatenation is the operation of creating a new string by sticking to strings together. Example:
full_name = "Sebastien" + " " + "Saunier"

# Interpolation is the operation of creating a string by executing code inside the string. Example:
full_name = "#{'sebastien'.capitalize} #{'saunier'.capitalize}"

# ARRAYS

fruits = ["banana", "peach", "watermelon", "orange"]

# Print out "peach" from the fruits array in the terminal
puts fruits[1]

# Add an "apple" to the fruits array
fruits << "apple"
fruits.push("apple")

# 3.add(2)
# 3 + 2

# Replace "watermelon" by "pear"
fruits[2] = "pear"

# Delete "orange"
fruits.delete_at(3)
# Here are three more different methods we can use to delete the element "orange"
# fruits.delete_at(-1)
# fruits.delete('orange')
# fruits.pop


# HASHES
city = { name: "Paris", population: 2000000 }

# Print out the name of the city
puts city[:name]
# Add the Eiffel Tower to city with the `:monument` key
city[:monument] = "Eiffel Tower"
# Update the population to 2000001
city[:population] = 2000001
p city
# What will the following code return?
city[:mayor]
nil


# Use the map iterator to convert the variable students, an array of arrays, into an array of hashes.Those hashes should have two keys: :name and :age. What is the type of those keys?

# Code example given to the student:
students = [ [ "john", 28 ], [ "mary", 25 ], [ "paul", 21 ] ]

# TODO: Convert the array of arrays into an array of hashes.

students_hash = students.map do |student|
  # p student
  # student = [ "john", 28 ]
  # student = [ 0, 1 ]
  { name: student[0], age: student[1] }
end

p students_hash
# students_hash = [{name: "john", age: 28  }, {name: "mary", age: 25}, {name: "paul", age: 21} ]
