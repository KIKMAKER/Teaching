def timer(seconds)
  start_time = Time.now
  round_seconds = seconds.ceil

  # yield(round_seconds) if block_given?

  if block_given?
    yield(round_seconds)
  else
    sleep(seconds)
  end

  end_time = Time.now
  elapsed_time = end_time - start_time
  puts "You worked for #{elapsed_time}s."
end

timer(2.9) do |seconds|
  puts "doing some work"
  sleep(seconds)
  puts "done working"
end

timer(5.6) do |seconds|
  puts "doing a lot of flashcards"
  sleep(seconds)
  puts "all done"
end


timer(2)
