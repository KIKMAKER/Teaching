def timer(seconds)
  puts "starting to work"
  start_time = Time.now

  yield(start_time, seconds) if block_given?

  puts "Finished working"
  end_time = Time.now

  elapsed_time = end_time - start_time

  puts "You worked for #{elapsed_time}s"
  puts "--------------------------"
end

timer(2)


timer(2) do |time, seconds|
  puts "The timer started at #{time}"
  puts "getting something from the database"
  sleep(seconds)
end

# timer do |time|
#   puts "The timer started at #{time}"
#   puts "sending an email"
#   sleep(1)
# end


# timer do |time|
#   puts "The timer started at #{time}"
#   puts "printing your invoice"
#   sleep(0.5)
# end



