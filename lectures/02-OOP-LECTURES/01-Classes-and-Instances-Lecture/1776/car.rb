# by convention:
# class name is UpperCamelCase
# filename is lower_snake_case

class Car
  # getter
  attr_reader :make, :year # :colour,
  # attr_writer :colour # and any other variable I want to be able to change
  attr_accessor :colour

  def initialize(colour, make, year)
    # define instance variables which create the *state* of each instance of the class
    @engine_started = false
    @colour = colour
    @make = make
    @year = year
  end

  def start_engine
    # change the state of my instance
    # create some *behaviour*
    ignite_spark_plugs
    # change the state of the instance variable @engine_started to 'true'
    @engine_started = true
  end

  def engine_started?
    return @engine_started
  end

  private

  def ignite_spark_plugs
    puts "igniting"
  end

  # def colour
  #   return @colour
  # end

  # def make
  #   @make
  # end

  # def colour=(new_colour)
  #   @colour = new_colour
  # end

end
