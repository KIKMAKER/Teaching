# Code a timer that takes a block

def timer()
  start_time = Time.now

  startup_time = 3
  # do some work
  if block_given?
    yield(startup_time)
  end

  end_time = Time.now

  elapsed_time = end_time - start_time

  puts "that took #{elapsed_time} seconds"
end

timer()

timer() do |startup_time|
  #some code that takes 2 seconds
  puts "doing something quick"
  sleep(1 + startup_time)
end

timer() do |startup_time|
  #some code that takes 2 seconds
  puts "doing something a lil slower"
  sleep(2.5 + startup_time)
end
