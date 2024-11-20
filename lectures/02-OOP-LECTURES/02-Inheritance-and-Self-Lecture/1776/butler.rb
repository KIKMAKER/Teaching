class Butler
  attr_reader :castle, :name
  def initialize(castle, name)
    @name = name
    @castle = castle
  end

  def clean_castle
    puts "all #{@castle.floor_area} square meters were cleaned by #{@name}"
  end
end
