## HASHES

# Write a program to display a list of students with their age
students = ["Vusi", "Guy", "Sinéad", "Tori", "Kylle", "Joe"]
student_ages = [14, 23, 19, 42, 38, 57]


# students.each_with_index do |student, index|
#   age = student_ages[index]
#   "#{student} is #{age} years old"
# end


# CRUD ON ARRAYS

#C
array = []
array.push("new element")
array << "another element"

#R
array[0]

#U
array[1] = "the latest element"

#D
array.delete_at(1)
# p array


#  CRUD ON HASHES

paris = {}

paris = {
  "country" => "France",
  "monument" => "Eiffel Tower",
  "friends" => ["Clare", "Michael"]
}

# C
paris["population"] = 2000000
# hash["new_key"] = "value"

# R

paris["population"]
# hash["key"]

# U
paris["population"] = 2000001
# hash["key"] = "new_value"

# D
# paris.delete("monument")

# paris.each do |key, value|
#   p "Paris has #{key} #{value}"

# end

# key_present = false

# paris.each do |key, value|
#   if key == "monument"
#     key_present = true
#   end
# end

# puts key_present

# p paris.key?("monument")
# p paris.keys
# p paris.values

cities = [["London", "England", "Big Ben"], ["Paris", "France", "Eiffel Tower"]]

# Paris' country
# p cities[1][1]

cities = {
  "London" => {
    "country" => "England",
    "monument" => "Big Ben"
  },
  "Paris" => {
    "country" => "France",
    "monument" => "Eiffel Tower"
  }
}



## SYMBOLS

cities = {
  London: {
    country: "England",
    monument: "Big Ben"
  },
  Paris: {
    country: "France",
    monument: "Eiffel Tower"
  }
}
# London's country
cities[:London][:country]

# HTML GENERATOR
def tag(name, content)
  "<#{name}>#{content}</#{name}>"
end

tag("h1", "Hello World")
# => <h1>Hello world</h1>

# => <a href='http://lewagon.org' class='btn'>Le Wagon</a>
# => <a href='http://lewagon.org' class='btn'>Le Wagon</a>
# => <a href='http://lewagon.org' class='btn' alt='link'>Le Wagon</a>"

# LONG METHOD
# def tag(name, content, attributes = {})
#   tags_list = []
#   # iterate over the hash (final argument of the method call), href: "http://lewagon.org" ===> href='http://lewagon.org'
#   attributes.each do |key, value|
#     # make a string where key='value'
#     key_value_string = "#{key}='#{value}'"
#     # put each element into an array
#     tags_list << key_value_string
#   end
#   # join them with a space inbetween
#   tags_list.join(" ")
#   # interpolate into the tag string
#   "<#{name} #{tags_list.join(' ')}>#{content}</#{name}>"
# end



# REFACTORED METHOD
def tag(name, content, attributes = {})
  tags_list = attributes.map { |key, value| "#{key}='#{value}'" }.join(' ')
  "<#{name} #{tags_list}>#{content}</#{name}>"
end
p tag("a", "Le Wagon", { href: "http://lewagon.org", class: "btn" })
