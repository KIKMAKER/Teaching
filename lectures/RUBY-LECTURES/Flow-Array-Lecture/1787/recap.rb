# DATA TYPES
string = "string"
# puts string
string.upcase
# p string.gsub("g", "x")
# p string.class
integer = 2
# p integer.odd?
# puts integer.class
array = ["wolf", "hound", "sabertooth", "mammoth"]
# puts "sample"
# p array.sample
# puts "shuffle"
# p array.shuffle
# puts "reverse"
# p array.reverse

# puts array.class
boolean = true
# p boolean.inspect.class
# puts boolean.class
float = 3.149
# p float.floor
# p float.ceil
# p float.truncate(2)
# p float.round(2)
# puts float.class
range = (4...99)
# p range.to_a
# puts range.class

# p vs puts
# p is used for debugging, we get the data indicators
# puts neatly displays the content of the object



# VARIABLES
# Assign a value to a variable

puts "what is your age?"

users_age = gets.chomp.to_i

# p age.class

# puts "it is #{age.odd?} that your age is an odd number"
# puts "one year passes"
# puts "your age is now:"
# age = age + 1

# p age

# puts "it is #{age.odd?} that your age is an odd number"

# so that we can use it later
# so that we can manipulate (apply methods and transformations)


# METHODS
# to name a collection of code to be reused over and over again

def odd_age(age)
  # the job done when the method is called
  # (the code)
  puts "it is #{age.odd?} that your age is an odd number"
  puts "one year passes"
  puts "your age is now:"
  age = age + 1
  p age
  puts "it is #{age.odd?} that your age is an odd number"
end

# odd_age(users_age)

first_name = "Kiki"
last_name = "kennedy"
# INTERPOLATION
# inserting ruby code into a string

p "#{first_name.capitalize} #{last_name.capitalize} who is #{age} years old."

# CONCATENATION
# adding strings together
p first_name.capitalize + " " + last_name.capitalize + " who is " + age.to_s + " years old."
