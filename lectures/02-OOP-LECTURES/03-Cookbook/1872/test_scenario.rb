require_relative 'task'
require_relative 'tasks_view'
require_relative 'task_repository'
require_relative 'tasks_controller'
require_relative 'router'


task_repo = TaskRepository.new
tasks_controller = TasksController.new(task_repo)

router = Router.new(tasks_controller)
router.run


# task_1 = Task.new("Wash the dishes")
# task_2 = Task.new("Flashcards")
# task_3 = Task.new("Mow the lawn")
# task_repo.create(task_1)
# task_repo.create(task_2)
# task_repo.create(task_3)

# tasks = task_repo.all
# task_1.done!

# tasks_view = TasksView.new

# tasks_view.display_list(tasks)

# organising the view and the task and the repo is a job
# CONTROLLER

# tasks_controller.add
# description = tasks_view.ask_for_description

# new_task = Task.new(description)

# task_repo.create(new_task)

# tasks_view.display_list(tasks)
# displaying is a separate job
# tasks.each_with_index do |task, index|
#   puts "#{index + 1}. [#{task.done? ? 'X' : ' '}] #{task.description}"
# end

# p task_repo
# p task_1
# puts task_1.description
# p task_1

# a job of storage
# the information needed is all the tasks i.e tasks array
# tasks = []


# the behaviour needed is adding a task to the array
# tasks << task_1
