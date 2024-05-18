# JOB = STORE INSTANCES
class TaskList

  def initialize
    @tasks = []
  end

  # instance variable of the task list class
  def add(task)
    @tasks << task
  end

  def all
    @tasks
  end

end
