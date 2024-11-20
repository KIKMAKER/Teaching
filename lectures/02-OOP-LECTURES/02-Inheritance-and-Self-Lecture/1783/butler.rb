class Butler

  attr_reader :castle, :name

  def initialize(name, castle)
    @name = name
    @castle = castle
  end

  def clean_castle
    puts "#{@name} is cleaning #{@castle}"
  end
end
