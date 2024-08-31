# CRUD ON ARRAYS

counts = [1, "two", ["one", "two", "three"].count, 4]

students = ["Ashley", "Xhanti", "JP", "Samuel", "Bernie"]
ages = [16, 32, 41, 36, 22]


# Create

students << "Bernie"

# puts students

# Read
## Read the element by its INDEX

# p students[1]

# Update
## Access the element bt its index

students[0] = "Ash"

# p students

# Delete

students.delete_at(-1)

# ITERATION

students.each_with_index do |student, index|
  puts "Hello #{student}, welcome to the Hashes & Symbols lecture"
  puts "Congrats on getting here at the age of #{ages[index]}"
end


# IF STATEMENTS

age = 24

# if age > 18
#   puts "You can vote"
# else
#   puts "Too young to vote"
# end


# # ternerary operator
# age > 18 ? puts "Can vote" : puts "Too young"

# age.odd? ? puts "odd age" : puts "even age"

# puts "you can vote" if age > 18
# puts "too young" unless age > 18


# VARIABLES
# assign 24 to the variable age

age = 24

# we assign in three places
# 1. To use in our normal code (to store a value for reuse and manipulation)
# 2. When defining a method (to represent the argument passed to the method)
# 3. When opening a block (to represent a temporary variable in the block)

def proper_name(first_parameter, second_parameter)
  first_parameter.strip!
  second_parameter.strip!

  # concatenation
  # full_name = first_parameter + " " + second_parameter

  # interpolation
  full_name = "#{first_parameter.capitalize} #{second_parameter.capitalize}"

  return full_name

end

first_name = "kiki   "
last_name = "   kennedy  "

# puts proper_name(first_name, last_name)
