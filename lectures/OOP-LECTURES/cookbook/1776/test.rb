require_relative 'task.rb'
require_relative 'repository.rb'
require_relative 'view.rb'
require_relative 'controller.rb'

repo = Repository.new
cleaning_task = Task.new("wipe the counter")
repo.create(cleaning_task)
controller = Controller.new(repo)

puts "Welcome to your task app"
user_action = ''
until user_action == 5
  puts "What do you want to do?"
  puts "1 - add a task"
  puts "2 - list all tasks"
  puts "3 - mark a task complete"
  puts "4 - remove a task"
  puts "5 - quit"

  user_action = gets.chomp.to_i

  case user_action
  when 1
    # Ask the controller to manage:
    # get the description of the task
    # create the task
    # add it to the repo
    controller.add
  when 2
    # Ask the controller to manage displaying all the tasks
    controller.list
  when 3
    # Get the controller to manage:
    # Display the list of tasks
    # Ask which task to mark
    # get the task
    # mark it as complete
    controller.mark_task
  when 4
  when 5
    puts "quitting"
  else
    puts "not an option"
  end
end
puts "Ciao"

# p repo.all
# CLIENT REQUIREMENTS
# A task app
# # Add a task
# # View all tasks
# # Mark a task complete
# # Remove a task

# # create an INSTANCE of the Task CLASS
# cleaning_task = Task.new("wipe the counter")
# cleaning_task = Task.new("wipe the counter")

# # p cleaning_task


# # p cleaning_task.description # should return the string value stored in @description


# cleaning_task.description = "Wipe the kitchen counters with a cloth"

# # p cleaning_task.description # should return the string value stored in @description

# cleaning_task.mark_as_done!

# # p cleaning_task

# cleaning_task.done?

# # need to store tasks (Repository)

# # puts "repo 1"
# # p repo

# repo.create(cleaning_task) # pops the task into the @tasks array

# # repo.create(new_task)

# puts "repo 1s tasks"
# # p repo.all #returns the @tasks array


# # need to get new tasks from the user

# view = View.new
# # p view

# view.display_tasks(repo.all)

# # puts "What is the task description?"
# # task_description = gets.chomp


# # new_task = Task.new(task_description)













# # repo_2 = Repository.new
# # puts "repo 2"
# # p repo_2
# # puts "repo 2s tasks"
# # p repo_2.all
