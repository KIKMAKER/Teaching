class Task
  attr_reader :description

  def initialize(description)
    @description = description
    @done = false
  end

  def done?
    @done
  end

  def done!
    @done = true
  end

  # def confuse
  #   puts "I can't remember if I've done it"
  # end

  # def description
  #   return @description
  # end
end
