# Write a program to display a list of students with their age

# students = ["Carine", "Hugo", "Seb"]
# students_age = [17, 39, 22]

# I wanted to say "Carine is 17", "Hugo is 39", "Seb is 22"

# students.each_with_index do |student, index|
#   # p student
#   # p index
#   puts "#{student} is #{students_age[index]}"
# end

# CRUD ON ARRAYS
#  C
# array = []
# array << "new element"
# array.push("new_value")
# array.push("index_value", "value")

#  R - access elements of an array by their index
# array[index]

# U - find the element with its index and then assign a new value

# array[index] = "new_value_to_be_assigned"

# D - by index or by element
# array.delete("element")
# array.delete_at(index)


# CRUD ON HASHES

students = { "Carine" => 17, "Hugo" => 39, "Seb" => 22 }

# C

# hash = { "key" => "value" }

# hash["new_key_name"] = "whatever I want as the value for that key"
hash["names"] = ["Carine", "Hugo", "Seb"]

# R
# p hash["names"]
# p hash

# U

# hash["key"] = "new_value"
# hash["names"] += ["Spot", "Ringo"]

# D
# p hash

# hash.delete("names")
# p hash


paris = { "country" => "France", "monument" => "Eiffel Tower"}
# # p paris
# paris["population"] = 200_000_000
# # p paris
# p paris["country"]

# # paris["population"] = 200_000_001
# paris["population"] += 1

# p paris

# paris.delete("monument")
# p paris

# .EACH FOR HASHES

# paris.each do |key, value|
#   # p key
#   # p value
#   p key.upcase
#   p value.capitalize
# end

# key_present = false

# paris.each do |key, value|
#   if key == "golf"
#     key_present = true
#   end
# end

# p key_present


# p paris.key?("golf")
# p paris.keys
# p paris.values

# cities = [["London", "Big Ben", 400_000], ["Paris", "Eiffel Tower", 200_000]]

# p cities[0][1]

# cities = {
#   "London" => { "country" => "England", "monument" => "Big Ben" },
#   "Paris" => { "country" => "France", "monument" => "Tour Eiffel" }
# }

# p cities["Paris"]["monument"]


# shop = {"apple" => 3, "pineapple" => 4 }

# apple = { item_name: "apple", price: 3 }



# shop.each do |item, price|
#   # puts "The shop has an #{item} for R#{price}"
# end


#  HASH AS LAST ARGUMENT



# def tag(name, content)
#   puts "<#{name}>#{content}</#{name}>"
# end

# tag("h1", "Hello world")
# => <h1>Hello world</h1>


# => <a href='http://lewagon.org' class='btn'>Le Wagon</a>

def tag(name, content, attributes = {} )
  # iterate over the hash

  tags_list = []
  attributes.each do |key, value|
    # return key='value'
    # store it in an array
    tags_list << "#{key}='#{value}'"
  end
  # join the elements of the array into a single string
  tags_list.join(' ')

  # interpolate that into simple tag string
  puts "<#{name} #{tags_list.join(' ')}>#{content}</#{name}>"
end


#  REFACTORED CODE

# def tag(name, content, attributes = {} )
#   tags_list = attributes.map { |key, value| "#{key}='#{value}'" }.join(' ')
#   puts "<#{name} #{tags_list}>#{content}</#{name}>"
# end

tag("a", "Le Wagon", { href: "http://lewagon.org", class: "btn", id: 'le-wagon' })
