# What’s a variable? What’s the point of using variables? Give an example.

# 1. A named piece of data / A store of information
# 2. To reuse && to manipulate (apply methods)
# 3. eg:
greeting = "Hello class"
# if I don't use the variable, error: useless assignment to variable
greeting.upcase


# Precisely describe the following line of code using the correct vocabulary.

age = 18

# the integer 18 is assigned to the variable age


# What’s a method? What’s the point of defining methods?
# 1. A named piece (block) of code
# 2. To reuse that block of code in many places (to keep code DRY)


# Precisely describe what happens at each line using good vocabulary.
# Write a ruby comment next to the line you’re explaining using the #.

# Code example given to the student:
def multiply(x, y) # we create a method called multiply that takes two parameters x and y
  return x * y     # the method returns the product of x and y (il.e x times y)
end                # we end the method definition

puts multiply(5, 8) # prints to the terminal the result of the calculation with arguments 5 and 8, i.e 40
answer = multiply(5, 8)
puts answer
#=> 40


# What’s the keyword if ? Give us an example of if statements, using an age variable storing a student’s age for instance.
# 1. The keyword if is a CONDITIONAL STATEMENT, it checks if something is true or false
if 8 < 9
  puts "you don't know how to count"
end

# 2. write some code with `if`
age = 23

if age > 18
  puts "well done"
end


# Complete the following code to compute the exact average of students grades (using each ).

grades = [19, 8, 11, 15, 13]
# TODO: compute and store the result in a variable `average`

# add each element together
total = 0
grades.each do |grade|
  total = total + grade
  # total += grade
end

# average = total.to_f / grades.count
average = total.fdiv(grades.count)

# total = 0 + 19
# total = 19 + 8
# total = 27 + 11


# Define a capitalize_name method which takes first_name and last_name as parameters and returns the well-formatted fullname (with capitalized first and last names).

def capitalize_name(first_name, last_name)
  # returns "error" if first_name.blank? || last_name.blank?
  full_name = "#{first_name.capitalize} #{last_name.capitalize}"
  returns full_name
end


# What’s the difference between concatenation and interpolation? Give an example.
# Concatenation is a fancy name for adding strings together
"kiki".upcase + " " + "kennedy".upcase #=> "Kiki Kennedy"
"2" + "4" #=> "24"
# Interpolation inserts ruby code into a string
# (Interpolation is the operation of creating a string by executing code inside this string.)
"#{'kiki'.upcase} #{'kennedy'.upcase}"

# Translate each line of pseudo-code into ruby.

fruits = ["banana", "peach", "watermelon", "orange"]

# Print out "peach" from the fruits array in the terminal
puts fruits[1]
# Add an "apple" to the fruits array
fruits << "apple"

# Replace "watermelon" by "pear"
fruits[2] = "pear"

# Delete "orange"
fruits.delete("orange")
fruits.delete_at(3)


# Translate each line of pseudo-code into ruby.


city = { name: "Paris", population: 2000000 }

# Print out the name of the city
puts city[:name]

# Add the Eiffel Tower to city with the `:monument` key
city[:monument] = "Eiffel Tower"

# Update the population to 2000001
city[:population] = 2000001

# What will the following code return?
city[:mayor] #=> nil


# Use the map iterator to convert the variable students, an array of arrays, into an array of hashes.
# Those hashes should have two keys: :name and :age.
students = [ [ "john", 28 ], [ "mary", 25 ], [ "paul", 21 ] ]

student_hashes = students.map do |student|
  { name: student[0], age: student[1] }
end

p student_hashes
# What is the type of those keys?
#  SYMBOLS
