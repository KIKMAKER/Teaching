# DATA TYPES
# String
example = "Any characters in inverted commas"
a_string = ""

# built-in methods
example.upcase

# String interpolation
age = 195
"My age is #{age + 1}"

# Integer
  # any number without a decimal place
  1
  980456

# Float
  # any number with decimal places
  1.1
  puts 3.14159.floor
  puts 3.14159.ceil
  puts 3.14159.truncate(3)

# Boolean
  # TrueClass
  # FalseClass

# Array
  # Collection of elements
  an_array = []

  names = ["Xhanti", "Samuel", "JP"]
  # built-in methods
  puts names.size
  puts names.count
  puts names.length

  puts names.sort
  puts names.sample
  puts names.join(' ')

# VOCABULARY

# We assign a value to a variable

age = 25

# initiliase a variable

age = 0

# define a method
  def one_year_passes(age)
    # code executed when the method is called
    # using the arguments passed to the method
    age += 1
    # returns the return OR the last line
  return age
end


age = one_year_passes(45)
