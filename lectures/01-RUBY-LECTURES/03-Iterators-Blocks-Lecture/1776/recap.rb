# ARRAYS


# define an array with []
student_names = ["Xhanti", "Samuel"]
student_surnames = ["mahonga", "chimombe"]
teacher_names = ["Meg", "Kiki"]
index         = [  0  ,   1   ]
reverse_index = [ -2  ,  -1   ]

# CRUD

# Create (a new element in an array)

# push operator
student_names << "TJ"
student_names.push("Ash")

# insert
teacher_names.insert(0, "Ajmal")
p student_names
p teacher_names

# "TJ" >> student_names # incorrect
# "string".join(' ')


# Read (an element / get an element)

puts student_names[0]
student_names.first

p teacher_names[-1]
teacher_names.last


# Update
teacher_names[1] = "Megan"


# Delete
teacher_names.delete_at(-1)
teacher_names.delete("Kiki") # danager!

# # square vs round brackets
# # square -> getting info from an array at a certain index
# # round -> sending info to a method to perform a job and return an output

# def full_name(first, last)
#   name = "#{first.capitalize} #{last.capitalize}"
#   return name
# end

# puts full_name("xhanti", "mahonga")

# puts full_name(student_names[0], student_surnames[0])

# puts full_name(student_names[1], student_surnames[1])


# EACH


student_names.each do |name|
  # name represents each element in the array
  puts name
  puts "is another student"
end

student_names.each { |student| puts full_name(student) }
