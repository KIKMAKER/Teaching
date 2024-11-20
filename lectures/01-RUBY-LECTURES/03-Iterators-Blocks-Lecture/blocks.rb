# TIMER METHOD

#SIMPLE TIMER
def timer(seconds)

  start_time = Time.now
  # do some work
  end_time = Time.now

  elapsed_time = end_time - start_time
  puts "Elapsed time: #{elapsed_time}"

end

timer

#CUSTOMISABLE TIMER

puts "How long do you want to work for?"
seconds = gets.chomp.to_i

def timer(seconds)

  start_time = Time.now

  # do some work
  yield(seconds) if block_given?

  end_time = Time.now

  elapsed_time = end_time - start_time

  puts "Elapsed time: #{elapsed_time}"

end

# LOOPING TO USE THE TIMER MANY TIMES
while seconds != 0


  timer(seconds) do |length_of_time|
    puts "First timer"
    puts "I'm doing some work"
    sleep(length_of_time)
    puts "You worked for #{length_of_time} second"
    puts "done"
  end

  puts "How much longer do you want to work for?"
  seconds = gets.chomp.to_i

end

puts "well done on working"
