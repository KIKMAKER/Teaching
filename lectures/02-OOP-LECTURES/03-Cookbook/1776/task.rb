class Task
  # replace explicit attribute readers with:
  # attr_reader :description
  # replace explicit attribute writers with:
  # attr_writer :description
  # replace both with
  attr_accessor :description

  def initialize(description)
    # define the attributes of the class
    @description = description
    @done = false # default value

    # add as many instance variables / attributes as I want
    # consider if the info needs to be given when the task is created
    # if so, create a parameter and assign it to an instance variable
  end

  # explicit attribute reader
  # def description
  #   @description
  # end

  # explicit attribute writer
  # def description=(new_description)
  #   @description = new_description
  # end

  # IMPLICIT readers and writers (they don't have the exact name as the instance variable)

  def mark_as_done!
    @done = true
  end

  def done?
    @done
  end
end
