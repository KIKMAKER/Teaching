class Car
  # naming convention - > file lower_snake_case, class name UpperCamelCase
  attr_reader :make, :year #:colour
  # attr_writer :colour
  attr_accessor :colour # combines attr_reader and attr_writer

  def initialize(colour, make, year)
    @colour = colour
    @make = make
    @year = year
    @engine_started = false
  end

  # Reader / Getter methods (replaced by attr_reader)
  # def colour
  #   @colour
  # end

  # Writer / Setter methods (replaced by attr_writer)
  # def colour=(new_colour)
  #   @colour = new_colour
  # end

  # writing
  def start_engine
    igniting_spark_plug
    @engine_started = true
  end


  # reading
  def engine_started?
    @engine_started
  end

  private

  def igniting_spark_plug
    # some
  end

end
