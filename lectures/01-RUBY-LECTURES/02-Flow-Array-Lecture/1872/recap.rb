# DATA TYPES

string = "Hello"

"Hello #{string.split}"

boolean = true
boolean = false

range = ('a'..'f')

array = ["Meg", "Prince", "Kiki"]
meg = ["Megan", "Jane", "Street"]
array.shuffle
# p array.join(', and ')
# p array.join(' ')
# p array
# puts array
# puts "Hello #{meg.join(' ')}!"

integer = 4

float = 3.1415
float.truncate
float.round(2)

# returns the Class of the object it is called on
float.class


def full_name(first_name, last_name)
  # concatenation (addig strings together)
  # full_name = first_name + " " + last_name
  # string interpolation (inserts ruby into a string)
  full_name = "#{first_name} #{last_name}"
  return full_name
end


puts full_name("Michael", "Uche")
