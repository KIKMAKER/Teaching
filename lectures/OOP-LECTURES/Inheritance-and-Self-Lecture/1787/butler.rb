class Butler
  attr_reader :castle
  def initialize(castle)
    @castle = castle
  end

  def clean_castle
    puts "Cleaning #{@castle.name} at #{@castle.address}"
  end
end
