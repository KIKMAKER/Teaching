class TaskRepository
  def initialize
    @tasks = []

  end
  # a behavipur of the repo :: can add tasks to the array
  def create(task)
    @tasks << task
  end

  def all
    @tasks
  end

  def mark(index)
    task = @tasks[index]
    task.done!
  end

end
