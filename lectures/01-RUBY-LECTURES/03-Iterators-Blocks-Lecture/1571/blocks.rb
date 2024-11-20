musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

upcased_first_names = musicians.map do |musician|
  first_name = musician.split.first
  upcased_first_name = first_name.upcase
  # puts "[DEBUG] #{musician}'s first name is #{upcased_first_name}"

  upcased_first_name
end

# p upcased_first_names

# TIMER

# def timer
#   start_time = Time.now

#   yield
#   # puts "doing something"
#   # sleep(2)

#   puts "the timer started at #{start_time}"

#   yield

#   # puts "doing something"
#   # sleep(2)

#   end_time = Time.now

#   puts end_time - start_time
# end



# timer do
#   puts "doing something"
#   sleep(2)
# end


def greet(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.upcase}"
  yield(full_name)
end

hello = greet("Jess", "Verheul") do |full_name|
  "Hello, #{full_name}"
end

bonjour =


greet("Kiki", "Kennedy") do |full_name|
  "Bonjour, #{full_name}"

end

puts hello
puts bonjour
