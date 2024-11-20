# Data types
intro = "my name is kiki"

intro.upcase



"my name is kiki".capitalize

age = 34

age.even?





# descriptive variable names
# store data (strings, variables, arrays, integers, floats, booleans, ranges)
# reuse is
# apply methods to it (transform it)

# built in methods available for each data type

def greet(user_title, last_name, first_name)

    # interpolation
    # inserts ruby code into a string to make a new string
    # puts "Hello #{user_title} #{last_name}. It's nice to have you with us #{first_name}."
    puts "Hello #{user_title == 1 ? "Mr" : "Ms" } #{last_name}. It's nice to have you with us #{first_name}."

    # concatenation
    # add stings together to make a bigger string
    if user_title == 1
      user_title = "Mr"
    else
      user_title = "Ms"
    end
  puts "Hello" + " " + user_title + " " + last_name. "It's nice to have you with us " + first_name + "."

end


# puts "what is your first name"
# name = gets.chomp

# puts "what is your last name?"
# last_name = gets.chomp

# puts "choose [1] if you are a Mr, and [2] if you are a Ms"
# title = gets.chomp.to_i


# greet(title, last_name, name)


# if age > 18
#   puts "You can vote"
# else
#   puts "Vote in the future"
# end

# # condition ? result_if_truthy : result_if_falsey

# age > 18 "you can vote" : "vote in the future"

# age.even? ? (age + 2) : (age + 3)

# puts "you can vote" if age > 18

# iteration

# go through many pieces of data (i.e an array)
# students_names = ["matt", "jennifer", "sharon"]


# students_names.each do |student|
#   # the thing between |the pipes| represents each piece of data
#   puts "Hello #{student.capitalize}!"
# end

# unrejected_students = students_names.reject do |student|
#   # some condition on which to reject the student
#   student.include?("n")
# end


# p rejected_students


students =     [ "Peter", "Mary", "George", "Emma" ]
student_ages = [ 24     , 25    , 22      ,  20    ]

students << "Noks"

students.push("Ned")

student_ages << 24



students.each_with_index do |student, index|
  age = student_ages[index]
  puts "#{student} is #{age}"
end
