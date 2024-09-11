# HASHES

# made up of key value pairs

variable = {
  "key" => "value",
  3 => [1, 2, 3]
}

students_ages = {
  "Michael" => 32,
  "Sammy" => 22,
  "Meg" => 29
}

# CRUD

# CREATE
students_ages["Justin"] = 30
# Hash is made up of UNIQUE keys and values (which don't have to be unique)

# READ

# p students_ages["Sammy"]

# UPDATE
students_ages["Sammy"] = 23

# p students_ages


# DESTROY
students_ages.delete("Meg")


# UNIQUE HASH METHODS

# p students_ages.key?("Justin")

# p students_ages.keys
# p students_ages.values

students_ages["kiki"] # return nil


# ITERATION
students_ages.each do |student, age|
  # puts "#{student} is now #{age} years old"
end


# hash.each do |key, value|
#   # some code with the two variables key and value
# end


# SYMBOLS



students_ages = {
  "Michael" => 32,
  "Sammy" => 22,
  "Meg" => 29
}

# p :name.class

:age


students = {
  "peter" => {
    name: "peter",
    age: 33,
    address: "1 Paradise Lane"
  },
  "Jose" => {
    :name => "Jose",
    :age => 23,
    :address => "10 Island Way"
  }
}

peter = { name: "peter", age: 33, address: "1 Paradise Lane" }

peter[:address]
# peter[name:] #ERROR


# HASH AS LAST ARGUMENT IN A METHOD CALL


def tag(name, content, attributes = {})
  # initiliase a tags_list
  tags_list = []
  # go over the attributes hash
  attributes.each do |key, value|
    # create a tag for each property
    tags_list << "#{key}='#{value}'"
  end

  # join the tags
  joined_tags = tags_list.join(' ')

  # interpolate the values into an html string
  puts "<#{name} #{joined_tags}>#{content}</#{name}>"
end

# SAME METHOD REFACTORED

def tag(name, content, attributes = {})
  puts "<#{name} #{attributes.map { |key, value| "#{key}='#{value}'" }.join(' ')}>#{content}</#{name}>"
end




tag("a", "Le Wagon",  href: "http://lewagon.org", class: "btn" )
# => <a href="http://lewagon.org" class="btn">Le Wagon</a>


tag("h1", "Hello world", style: "font-size: 24px" )
# <h1 style="font-size: 24px">Hello world</h1>

tag("p", "Welcome to le wagon cape town!")
# <p>Welcome to le wagon cape town!</p>


# IF the hash is the last argument, you can leave out the curly brackets
# You can create an empty hash in the method definition to protect your method from argument error
