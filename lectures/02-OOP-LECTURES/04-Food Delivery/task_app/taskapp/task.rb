# JOB = MOULD/DEFINE INSTANCES
class Task
  attr_reader :title, :description
  def initialize(title, description)
    @title = title
    @description = description
    @completed = false
  end

  def completed?
    @completed
  end

  def complete!
    @completed = true
  end

end
