class Meal

  # class name defined with UpperCamelCase, file has the same name in lower_snake_case

  # attribute readers
  # GET THE DATA
  attr_reader :name, :prep_time
  # SET THE DATA
  attr_writer :name

  attr_accessor :instructions, :name # replaces reader and writer

  def initialize(name, prep_time, instructions)
    # the only method in ruby that is called with a different name
    @name = name
    @prep_time = prep_time
    @instructions = instructions
    # set a default value
    @completed = false
  end

  def completed?
    @completed
  end

  # custom methods : INSTANCE METHODS
  def cook
    puts "Starting to create a #{@name}"
    puts "setting a timer for #{@prep_time}"
    bake
    puts "Going to: #{@instructions}"
    puts "done!"
  end

  # READER
  # def name
  #   @name
  # end

  # def prep_time
  #   @prep_time
  # end

  # WRITER
  # def instructions=(new_instructions)
  #   @instructions = new_instructions
  # end

  # def name=(new_name)
  #   @name = new_name
  # end

  private

  def bake
    puts "baking the thing"
  end

end
