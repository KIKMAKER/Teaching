class Task
  def initialize(description)
    @description = description
    @done = false
  end

  def description
    @description
  end

  def done?
    @done
  end

  def done!
    @done = true
  end

  # def confuse!
  #   @done = "I DON'T KNOW"
  # end

end
