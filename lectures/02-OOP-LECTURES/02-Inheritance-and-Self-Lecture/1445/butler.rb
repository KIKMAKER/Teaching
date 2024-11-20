class Butler
  attr_reader :name
  def initialize(castle, name)
    @castle = castle # We want @castle to store an instance of Castle.
    @name = name
  end

  def clean_castle
    puts "#{@castle.name} is cleaned!"
    puts "all #{@castle.floor_size}m of it were cleaned by #{self.name}"
  end
end


# Butler.new("Kiki's Castle")

# Butler.new(my_castle)
