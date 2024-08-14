# DATA TYPES

# String

some_code = "Frappacino"
# p string.upcase

# string INTERPOLATION
# puts "Insert #{some_code} into a string"

# string CONCATENATION
# name = "Kiki"
# surname = "Kennedy"

# full_name = name + " " + surname
# p full_name

# Integer

any_number = 12

# modulo
# even / odd

# p any_number.odd?

# Float

with_a_decimal = 15.9

# p with_a_decimal.floor
# p with_a_decimal.ceil

# Array

names = ["Ricardo", "Hugo", "Carine"]
any_things = [names, 2, [true], 15.9]

# p names.sort


# Boolean (True/False)
# p true.class

# Range

# p rand(1..10)


# VOCABULARY

# assign a value to a variable

age = 15.to_f

# increment value

age = age + 1

#incrementing shorthand
age += 1

age /= 3
p age


# Methods

def method_name(any_parameter, or_two, or_as_many)
  # some code (using the parameters) that will be executed when the method is called

end

def age_by_one(age)
  age += 1
end

p age_by_one(age)
