require_relative 'task'
require_relative 'task_list'
require_relative 'controller'

# MAKING THE MODEL OF A TASK
first_task = Task.new("finish cookbook", "make sure it works before pushing to production")
# p first_task
second_task = Task.new("nap", "find a comfortable spot")
# p second_task

# MAKING AN INSTANCE OF A TASK LIST
repository = TaskList.new
repository.add(first_task)
repository.add(second_task)
p repository

# GETTING AND DISPLAYING INFO TO THE USER
puts "What is the task name?"
task = gets.chomp

controller = Controller.new(repository)
