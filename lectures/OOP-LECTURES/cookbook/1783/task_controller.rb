require_relative 'task_view'
require_relative 'task'
class TaskController

  def initialize(task_repository)
    @task_repository = task_repository
    @task_view = TaskView.new
  end

  def add
    # ask the user what task to add (VIEW)
    description = @task_view.ask_for_description
    new_task = Task.new(description)
    @task_repository.create(new_task)
  end

  def list
    # get all the taks in the repo
    tasks = @task_repository.all
    # display them in a list (VIEW)
    @task_view.display_list(tasks)
  end

  def mark
    # get tasks (REPO)
    tasks = @task_repository.all
    # display the tasks
    @task_view.display_list(tasks)
    # ask the user which task
    # get the index
    index = @task_view.ask_for_index
    # get the task
    task = tasks[index]
    # mark it as done
    @task_repository.mark_as_done(task)
  end



end
