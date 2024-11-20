
#CHALLENGE WITH ARRAYS
students = ["Dewald", "Tanya", "Dani", "Hadi"]
# index          0          1       2       3

student_ages = [24, 31, 17, 52]

# Dewald is 24, Tanya is 31

students.each_with_index do |student, index|
  student_age = student_ages[index]
  p "#{student} is #{student_age}"
end

p student_age["Dewald"]


# # ARRAY CRUD
# #Create
students << "Michael"
students.push("Michael")

# #Read - NB use INDEX/number
students[-1]

# #Update
students[1] = "Tassos"

# #Delete
students.delete_at(-2)

#HASHES

paris = {
  "Country" => "France",
  "population" => 2000,
  "monument" => "Eiffel Tower"
}

# Hash CRUD Actions

# #Create
# #format
# paris["new key"] = "value"
paris["friends"] = "Menno"

# #Read
paris["friends"]

#update
paris ["friends"] = "Dani"
#change the data type
paris["friends"] = ["Menno", "Dani"]
#add element to the array value
paris["friends"].push("JT")
paris["friends"].push("Dewald")

#delete
paris.delete("Country")


#EACH FOR HASHES

paris.each do |key, value|
  puts "Paris' #{key} is #{value}"
end


#METHODS
paris.key?("friends")
paris.keys
paris.values


#Hashes are more readable for complex/rich data
cities = {
  "London" => {
    "country" => "England",
    "monument" => "Big Ben"
  },
  "Paris" => {
    "country" => "France",
    "monument" => "Tour Eiffel"
  },
  "Cape Town" => {
    "country" => "South Africa",
    "monument" => "Table Mountain" }
}

p cities["London"]["monument"]
p cities["Cape Town"]["country"]


# SYMBOLS

p paris = {
  :country => "France",
  :population => 2211000
}

puts paris[:country]
#"country" != :country



# def tag(name, content, attributes={})
#   #initialize array
#   tags_list = []
#   #make a string out of the key value pair
#   attributes.each do |key, value|
#    key_value_string = " #{key}='#{value}'"
#    #put them in an array
#     tags_list << key_value_string
#   end
#   #join them
#   joined_tags = tags_list.join("")
#   #interpolate into a string
#   p "<#{name}#{joined_tags}>#{content}</#{name}>"

# end
tag("h1", "Hello world")
=> <h1>Hello world</h1>


def tag(name, content, attributes={})
  tags_list = attributes.map { |key, value| " #{key}='#{value}'" }.join("")
  p "<#{name}#{tags_list}>#{content}</#{name}>"
end

tag("a", "Le Wagon", { href: "http://lewagon.org", class: "btn", id: "Le-Wag-spec" })
# => <a href='http://lewagon.org' class='btn'>Le Wagon</a>
