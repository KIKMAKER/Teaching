students = ["David", "Ndi", "Janet", "Lourens"]
ages =     [23,    ,       31,        26,     22]

# keeping the info in TWO arrays is dangerous
# hard to maintain
"David is 42"


students.each_with_index do |student, index|
  puts "#{student} is #{ages[index]}"
end


student["age"]



