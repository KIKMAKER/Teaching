# BLOCKS

# Timer method


def timer(name)
  puts "-------"
  start_time = Time.now
  capitalised_name = name.capitalize
  # do somethin

  yield(capitalised_name) if block_given?

  end_time = Time.now
  puts "-------"
  elapsed_time = end_time - start_time

  puts "#{elapsed_time} seconds passed"
end

puts timer("Kiki")

timer("meg") do |name|
  puts "#{name} is doing some work"
  sleep(1)
end

timer("xhanti") do |capitalised_name|
  puts "#{capitalised_name} is doing a lot of work"
  sleep(2.5)
end
