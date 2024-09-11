require_relative 'task'

first_task = Task.new("Make breakfast")
second_task = Task.new("Do flashcards before Kiki eats my pizza")


puts "task 1 description:"
p first_task.description

puts "it is #{first_task.done?} that this task is complete"

puts "doing the task..."
first_task.done!

puts "it is #{first_task.done?} that this task is complete"

puts "task 1 instance:"
p first_task

puts "task 2 instance:"
p second_task

puts "task 2 description:"
p second_task.description

puts "it is #{second_task.done?} that this task is complete"
