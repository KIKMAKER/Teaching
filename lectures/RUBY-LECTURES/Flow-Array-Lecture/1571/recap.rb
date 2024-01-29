# DATA TYPES
require 'date' # the only data type we have covered that isn't built in

# String
  example = "Any characters in inverted commas"
  a_string = ""

  # built-in methods
  example.upcase

  # String interpolation
  age = 195
  "My age is #{age + 1}"

  year = 2024

  # Incrementation

  # year was 2024
  year = year + 1

  (1..3)

  # num = 1
  # total = 0

  total = total + num
  total = 1

  num = 2

  total = 1 + 2


  # year = 2024 + 1

  # is equivalent to
  year += 1

    "My age in #{ year } is #{ age }"
    "My age in #{ year += 1 } is #{ age += 1 }"
    "My age in #{ year += 1 } is #{ age += 1 }"
    "My age in #{ year += 1 } is #{ age += 1 }"

  # concatenation

  puts "My" + " " + "age" + "is" + age.to_s

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

  puts true.class
  puts false.class

# Array
  # Collection of elements
  an_array = []
  names = ["Monté", "Kingsley", "Finn", "" ]
  index = [   0   ,     1     ,    2  ]

  # built-in methods
  puts names.size
  puts names.count
  puts names.length

  puts names.sort
  puts names.sample
  puts names.join(' ')
  p names.join(' ')

# Range
  # Creates successive elements
  puts (1..10).to_a

  # example of chaining methods
  puts (1..10).to_a.join(', ')

  puts (Date.today..Date.today+10)

# Date

  # not built-in, require 'date'
  # has some built-in methods
  puts Date.today.day

  puts Time.now.day


# VOCABULARY

  # Assign variables

  age = 25

  # Initialise variables (use the same data type if you can,
  # nil if you want it to have no value)
  age = 0
  name = ""
  access_code = nil

    puts "What is your age"
    age = gets.chomp.to_i

# Methods

def full_name(first_name, last_name)
  # code executed when the method is called
  # using the arguments passed to the method
end
