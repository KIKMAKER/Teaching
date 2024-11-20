# BLOCKS

def timer(seconds)

  start_time = Time.now
  # something happends
  yield(seconds) if block_given?

  end_time = Time.now

  elapsed_time = end_time - start_time
  puts "Elapsed time: #{elapsed_time}"
end

timer(1) do |seconds|
  puts "doing some work"
  sleep(seconds)
end

timer(10)


def greet(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.upcase}"
  yield(full_name) if block_given?
end


hello = greet("alex", "Wunderlich") do |full_name|
  puts "Hello #{full_name} you looked great on the zoom this morning"
end
p hello

howzit = greet("Kieran", "Huybrechts") do |full_name|
  puts "Goeie môre #{full_name} hoe gaan dit met jou"
end

p howzit
