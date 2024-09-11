class Repository
  def initialize
    @tasks = []
  end

  def all
    @tasks
  end

  def create(task)
    @tasks << task
  end

  def find(task_index)
    task = @tasks[task_index]
    return task
  end
end
