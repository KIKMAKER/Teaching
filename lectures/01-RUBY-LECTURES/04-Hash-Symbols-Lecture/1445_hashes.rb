# RECAP

# define a variable
# age = 12

# define a method
# def add_and_multiply_by_2(number_1, number_2)
#   (number_1 + number_2) * 2
# end

## call the method with arguments and print the result to the terminal
# puts add_and_multiply_by_2(12, 33)

## one line if conditional
## result if condition
## result unless condition

## ternary operator
## condition ? result_if_truthy : result_if_falsey


## HASHES

## Challenge, return:
# # Cesar is 23
# # Nomsa is 15
# # Abdul is 39

# students = ["Cesar", "Nomsa", "Abdul"]
## index =     [   0    ,    1  ,   2   ]

# ages = [23, 15, 39]
## index = [0 , 1,  2 ]



# students.each_with_index do |student, index|
#   puts "#{student} is #{ages[index]}"
# end

# # CRUD ON ARRAYS

# # Read
# array_name[index_of_element]


# # Create

# array_name << item_to_be_added

# #  Update

# array_name[index_of_element] = new_value

# # Delete

# array_name.delete_at(index_to_be_deleted)


# CRUD ON HASHES

paris = {"country" => "France"}

# Read
# p paris["country"]

# Create

paris["monument"] = "Eiffel Tower"

# p paris

# Update

paris["monument"] = "Arc de Triomphe"
# p paris

# Delete
# paris.delete("monument")

# p paris

# EACH (ENUMERABLES ON HASHES)

# paris.each do |key, value|
#   p "#{key}"
#   p "#{value}"
# end

# paris.each { |key, value| p "#{key} #{value}"}

## check if a key exists

# key_present = false

# paris.each do |key, value|
#   if key == "horse"
#     key_present = true
#   end
# end

# # p key_present

## Built in methods like:
# p paris.keys
# p paris.key?("monument")

# cities = [ ["London", "England", "Big Ben"], ["Paris", "France", "Tour Eiffel"] ]

# # print the monument of the city
# p cities[0][2]
# p cities[1][2]

# cities = {
#   "London" => { "country" => "England", "monument" => "Big Ben" },
#   "Paris" => { "country" => "France", "monument" => "Tour Eiffel" }
# }

# p cities["London"]["monument"]
# p cities["Paris"]["monument"]

## SYMBOLS

# cities = {
#   London: { country: "England", monument: "Big Ben" },
#   Paris: { country: "France", monument: "Tour Eiffel" }
# }

# p cities[:Paris].key?(:monument)

## symbols to id data, strings for the actual data

# students = {"Kieran" => { name: "Kieran", age: 42, country: "South Africa"} }


## HASHES AS THE LAST ARGUMENT

# def tag(tag_name, content, attributes = {})
#   # initialise a tags list array
#   tags_list = []
#   # iterate over the hash argument

#   attributes.each do |key, value|
#   # create a string in the correct html format
#     tag = "#{key}='#{value}'"
#     # add each element to the tags list array
#     tags_list << tag
#   end
#   # join them together
#   joint_tags = tags_list.join(' ')
#   # p joint_tags
#   #interpolate them into the resulting html code
#   "<#{tag_name} #{joint_tags}>#{content}</#{tag_name}>"
# end
#  REFACTORED

def tag(tag_name, content, attributes = {})
  tags_list = attributes.map { |key, value| " #{key}='#{value}'" }.join
  "<#{tag_name}#{tags_list}>#{content}</#{tag_name}>"
end

p tag("h1", "Hello world")
# => <h1>Hello world</h1>


p tag("a", "Le Wagon", href: "http://lewagon.org", class: "btn", id: "tag-lw" )
# => <a href='http://lewagon.org' class='btn'>Le Wagon</a>
