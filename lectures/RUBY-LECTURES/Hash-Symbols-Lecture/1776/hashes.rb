# HASHES
hash = { "key" => "value"}

students = ["Ashley", "Xhanti", "JP", "Samuel", "Bernie"]

students[0]
# students["Ashley"]

students_ages = {
        "Ashley" => 16,
        "Xhanti" => 29,
        "JP" => 34,
        "Samuel" => 22,
        "Bernie" => 63
      }


# CRUD ON HASHES

# Create
# Add a new key value pair to the hash

students_ages["TJ"] = 33


# Read
# Access a value by it's key

# puts students_ages["Samuel"]
# puts students_ages["JP"]
# puts students_ages["Bernie"]

# Update
# Reassign a value at a key in the hash

students_ages["Bernie"] = 51

# Delete
# Remove a key value pair from a hash

students_ages.delete("Ashley")

# p students_ages

# if the key doesn't exist in the hash
students_ages["Kiki"] # return nil


# ITERATING WITH EACH

# puts "Ashley is 16 years old"

# students_ages.each do |key, value|
#   puts "#{key} is #{value} years old"
# end

students_ages.each do |name, age|
  # puts "#{name} is #{age} years old"
end

# BUILT IN METHODS

# Check if key exists

key_present = false

students_ages.each do |name, age|
  if name == "Bernie"
    key_present = true
  end
end
# p students_ages
# p key_present

# puts students_ages.key?("Bernie")

# p students_ages.keys
# p students_ages.values


# Compare Hashes and Arrays
cities = [ ["London", "England", "Big Ben"], ["Paris", "France", "Tour Eiffel"] ]

# get paris monument
# cities[1] == ["Paris", "France", "Tour Eiffel"]
cities[1][2] ==  "Tour Eiffel"

cities = {
  "London" => { "country" => "England", "monument" => "Big Ben" },
  "Paris" => { "country" => "France", "monument" => "Tour Eiffel" }
}

cities["Paris"] == { "country" => "France", "monument" => "Tour Eiffel" }

cities["Paris"]["monument"] == "Tour Eiffel"


# HASH AS LAST ARGUMENT

# def tag(name, content)
#   p "<#{name}>#{content}</#{name}>"
# end


# tag("h1", "Hello world")
# # # => <h1>Hello world</h1>

def tag(name, content, attributes) # attr
  # attributes is going to be a hash
  # initialise an empty array to store the transformed attributes
  tags_list = []
  # iterate over the attributes list
  attributes.each do |key, value|
    # combine the key and value with an equals sign in the middle
    attribute = "#{key}='#{value}'"
    # push it into the tags list
    tags_list << attribute
  end
  joined_tags_list = tags_list.join(' ')
  # join the tags list

  return "<#{name} #{joined_tags_list}>#{content}</#{name}>"
end


# refactored
def tag(name, content, attributes) # attr
  joined_tags_list = attributes.map { |key, value| "#{key}='#{value}'" }.join(' ')

  return "<#{name} #{joined_tags_list}>#{content}</#{name}>"
end

p tag("a", "Le Wagon", href: "http://lewagon.org", class: "btn", style: "w-2")
# => <a href="http://lewagon.org" class="btn">Le Wagon</a>
  # "<a href='http://lewagon.org' class='btn'>Le Wagon</a>"
