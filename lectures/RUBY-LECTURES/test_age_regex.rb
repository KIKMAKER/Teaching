age = ""

until age.match?(/\d{1,3}$/)
  puts "What is your age?"
  age = gets.chomp
end
