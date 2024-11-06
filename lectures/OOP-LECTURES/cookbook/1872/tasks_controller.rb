require_relative 'tasks_view'
require_relative 'task'
class TasksController

  def initialize(task_repository)
    @tasks_view = TasksView.new
    @task_repo = task_repository
  end

  def add
    # get the description from the user (VIEW)
    description = @tasks_view.ask_for_description
    # create a new task (MODEL)
    new_task = Task.new(description)
    # store it in the db (REPO)
    @task_repo.create(new_task)
  end

  def list
    # # get all the tasks (REPO)
    # tasks = @task_repo.all
    # # send them to be displayed (VIEW)
    # @tasks_view.display_list(tasks)
    display_tasks #REFACTORED
  end

  def mark
    display_tasks
    # ask which task to mark (VIEW)
    task_index = @tasks_view.ask_for_index
    # mark the task as done (REPO)
    @task_repo.mark(task_index)
  end

  private

  def display_tasks
    # get all the tasks (REPO)
    tasks = @task_repo.all
    # display the list of tasks (VIEW)
    @tasks_view.display_list(tasks)
  end
end
