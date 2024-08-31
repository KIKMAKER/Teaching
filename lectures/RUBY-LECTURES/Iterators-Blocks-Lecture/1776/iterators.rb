#
student_first_names = ["Xhanti", "Samuel", "TJ"]
student_last_names = ["mahonga", "chimombe", "BODIBE"]


def full_name(first, last)
  name = "#{first.capitalize} #{last.capitalize}"
  return name
end

# puts full_name("xhanti", "mahonga")

# puts full_name(student_first_names[0], student_last_names[0])

# puts full_name(student_first_names[1], student_last_names[1])


student_first_names.each_with_index do |student_first_name, index|
  # puts "student at index: #{index}"

  puts "Dear #{full_name(student_first_name, student_last_names[index])}"

  puts "Welcome to Le Wagon #{student_first_name}!!!"

  # humanising the array index by adding 1

  puts "You were the number #{index + 1} to join the bootcamp"

  puts "_____________________________"
end


# MAP

upcased_names = student_first_names.map do |student_name|
  student_name.upcase
end

# p upcased_names

# same thing with each

upcased_names = []

student_first_names.each do |student_first_name|
  upcased_names << student_first_name.upcase
end

p upcased_names


# COUNT
musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']


musicians_with_r = musicians.count do |musician|
  # some statement that returns true or false
  musician.start_with?('R')
end

# p musicians_with_r

# with each

musicians_with_r = 0

musicians.each do |musician|
  if musician.start_with?('R')
    musicians_with_r += 1
  end
end

# puts musicians_with_r


# SELECT
musicians_with_r = musicians.select do |musician|
  # some statement that returns true or false
  musician.start_with?('R')
end

p musicians_with_r

# each
musicians_with_r = []

musicians.each do |musician|
  if musician.start_with?('R')
    musicians_with_r << musician
  end
end

p musicians_with_r

# REJECT
musicians_without_r = musicians.reject do |musician|
  # some statement that returns true or false
  musician.start_with?('R')
end

p musicians_without_r
