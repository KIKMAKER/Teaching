require_relative 'view'
require_relative 'task'

class Controller
  def initialize(repository)
    @repository = repository
    @view = View.new
  end

  def add
    # get the description of the task (VIEW)
    description = @view.get_description
    # create the task (MODEL)
    task = Task.new(description)
    # add it to the repo (REPO)
    @repository.create(task)
  end

  def list
    # get all the tasks (REPO)
    tasks = @repository.all
    # display the tasks (VIEW)
    @view.display_tasks(tasks)
  end

  def mark_task
    # Display the list of tasks
    list
    # Ask which task to mark (VIEW)
    task_index = @view.ask_which_task
    # get the task (REPO)
    task = @repository.find(task_index)
    # mark it as complete (MODEL)
    task.mark_as_done!
  end
end
