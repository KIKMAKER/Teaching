students =     [ "Guy", "Pascal", "Tori", "Michael" ]
student_ages = [ 17     , 22    , 37      ,  64    ]

# Write a program to display a list of students with their age
# Guy is 17 years old, Pascal is 22 years old

students.each_with_index do |student, index|
  age = student_ages[index]
  p "#{student} is #{age} years old"
end


# An Array index is always an Integer.
# A Hash "index" describes the value at that "index"
# A hash key is usually a string (or a symbol)


# CRUD ON ARRAYS

# C
array = []
array.push("new element")
array << "another element"

# R
array[0]

# U
array[0] = "an edited element"

# D
array.delete_at(1)

# HASHES

hash = {}

hash = {
  #key => value
}

hash = {
  "name" => "Kiki"
  "age" => 45
}


# CRUD ON HASHES

# C


# R

hash[#key]
hash["name"]


# U
array[0] = "an edited element"

# D
array.delete_at(1)
