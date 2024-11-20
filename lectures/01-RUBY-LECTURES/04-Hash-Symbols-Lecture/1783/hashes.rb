students = ["David", "Ndi", "Janet", "Lourens"]
ages =     [23,    ,       31,        26,     22]

# keeping the info in TWO arrays is dangerous
# hard to maintain
"David is 42"


students.each_with_index do |student, index|
  puts "#{student} is #{ages[index]}"
end



students_info = { "David" => [34, "+345678994", "david@handsome.com"],
              "Ndi" => {"age" => 34, "phone_number" => "09765429874", "email" => "charming@ndi.com"},
              "Darian" => 13,

            }
# CRUD

# Create
students_info["Mmanare"] = {"age" => 29, "phone_number" => "0987729874", "email" => "prettiest@mmanare.com"}

# Read

# p students_info["Darian"]
# p students_info["David"]
# p students_info["Ndi"]

# Update
students_info["Darian"] = {"age" => 16, "phone_number" => "0985449874"}
students_info["Darian"] = {"age" => 16, "phone_number" => "0985449874", "email" => ""}

# p students_info["Darian"]

students_info["Darian"]["email"] = "kindestman@darian.com"
students_info["Darian"]["phone_number"] = "kindestman@darian.com"
# p students_info["Darian"]

students_info["Janet"]= {}
students_info["Janet"]["age"]= 21
students_info["Janet"]["phone_number"]= "087645789"
students_info["Janet"]["email"]= "sohot@janet.com"


# if the key doesn't exist and we try and look for it, ruby returns nil

# p students_info

# p students_info["David"][2]

# ndis_info = students_info["Ndi"]

# Destroy

# p students_info.delete("Ndi")

# Recreate Ndi

students_info["NDI"] = students_info.delete("Ndi")
# p students_info


# p students_info[students_info.keys[1].upcase]



drinks = {
  david: "Heineken",
  "Ndi" => "Caprisun / Sprite",
  "Janet" => "Sprite",
  "Mmanare" => "Cappuccino",
  "Darian" => "Monster"
}

drinks.each do | student, drink |
  puts "#{student.to_s} likes to drink #{drink}"
end
":david likes to drink "
"ndi".to_sym

# BUILT IN METHODS

# p students_info.keys
# p students_info.values

p drinks.key?("David")



# When the keys are just identifiers
ndi =  { :name => "Ndi", :age => 34, :phone_number => "09765429874", :email => "charming@ndi.com", :drink => "Sprite" }

ndi = { name: "Ndi", age: 34, phone_number: "09765429874", email: "charming@ndi.com", drink: "Sprite"}


put "Ndi's email is #{ndi[:email]}"
