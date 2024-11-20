# HOW WOULD WE ASSOCIATE COMPLEX DATA WITH ARRAYS?

student_names = ["Dima", "Laura", "Grant", "Mehdi", "Michael", "Revyll"]
student_countries = ["Gabon", "Zim", "SA", "Congo", "France", "DRC" ]

# Use the index
student_names.each_with_index do |student_name, index|
  student_country = student_countries[index]
  puts "#{student_name} is from #{student_country}"
end

# We have something better!
# HASH

# hash has key => value pairs
student = {"name" => "Mehdi", "country" => "France"}

student_country = student["country"]
student_name = student["name"]

student_countries = {
                    "Dima" => "Zim",
                    "Laura" => "SA",
                    "Grant" => "Congo",
                    "Michael" => "DRC",
                    "Mehdi" => "France"
}

# CRUD ON HASHES

# Read

p student_countries["Mehdi"]
puts "Mehdi is from #{student_countries["Mehdi"]}"

# Create
student_countries["Revyll"] = "Gabon"

# Update
student_countries["Dima"] = "Zimbabwe"

# Delete
student_countries.delete("Mehdi")

p student_countries.size
p student_countries

student_countries.each do |name, country|
  "#{name} is from #{country}"

end

p student_countries.keys #=> returns an array of the keys
p student_countries.values #=> returns an array of the values

puts "In batch 1872 we have the following countries:"

student_countries.values.each_with_index do |country, index|
  puts "#{index + 1} - #{country}"
end

p student_countries.key? #=> returns true/false
p student_countries.key?("Lauren")

# in the backend this is what is happening:

def key?(array, potential_key)
  key_present = false
  array.each do |key, value|
    if key == potential_key
      key_present = true
    end
  end
  return key_present
end

p student_countries.value?("SA")
p student_countries["Kiki"] #=> nil

# SYMBOL VERSION
students = { dima: {
  name:  "Dima",
  country: "Zim",
  email: "dima@dima.com",
  DOB: "oneday"
  },
  "Laura" => {
    :name => "Laura",
    :country => "SA",
    :email=> "lau@laura.com",
    :DOB => "oneday"

  }
}

p students[:dima][:email]
p students["Laura"][:DOB]

# HASH AS A LAST ARGUMENT

def method_name(any, number, of_parameters)
  # code with the parameters, depending on their datatype
end

# if the hash is the last argument, you can omit the vurly brackets

# method_name("this string", 5, dima: "hello dima", michael: "hello michael")

def tag(tag_name, content, attributes={} )
  new_attributes = []
  attributes.each do |key, value|
    new_attributes << "#{key}='#{value}'"
  end
  joined_attributes = new_attributes.join(' ')
  "<#{tag_name} #{joined_attributes}><#{content}></#{tag_name}>"
end

# SHORT VERSION
def tag(tag_name, content, attributes={} )
  joined_attributes = attributes.map { |key, value| "#{key}='#{value}'" }.join(' ')
  "<#{tag_name} #{joined_attributes}><#{content}></#{tag_name}>"
end

p tag("h1", "Hello world")
p tag("p", "Welcome to Le Wagon")
p tag("h1", "Hello world", class: "bold", href: "https://www.lewagon.org" )
# # => <h1 class="bold">Hello world</h1>
p tag("a", "Le Wagon", href: "http://lewagon.org", class: "btn" )
# # => <a href="http://lewagon.org" class="btn">Le Wagon</a>
