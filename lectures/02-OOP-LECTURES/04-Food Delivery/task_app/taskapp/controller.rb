# JOB = COORDINATE BETWEEN THE OTHER FILES
require_relative 'view'
require_relative 'task'

class Controller
  def initialize(task_list)
    @view = View.new
    @task_list = task_list
  end

  def add
    # ask the user for the task title - VIEW
    task_title = @view.get_task_title
    # ask the user for the task description - VIEW
    task_description = @view.get_task_description
    # use the Task model to create the task - MODEL
    task = Task.new(task_title, task_description)
    # send the task to the repository to be stored - REPO
    @task_list.add(task)
  end

  def list
    # get all of the tasks - REPO
    tasks = @task_list.all
    # display all the tasks - VIEW
    @view.display_tasks(tasks)
  end

  def mark
    # ask the user which task to mark - VIEW
    task_index = @view.get_task_index
    # get the task - REPO
    tasks = @task_list.all
    task = tasks[task_index]
    # mark the task complete - MODEL
    task.complete!

  end

end
