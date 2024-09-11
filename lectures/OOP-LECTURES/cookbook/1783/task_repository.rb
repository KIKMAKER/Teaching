class TaskRepository

  def initialize
    @tasks = []
  end

  def create(new_task)
    @tasks << new_task
  end

  def all
    @tasks
  end

  def mark_as_done(task)
    task.done!
  end
end
