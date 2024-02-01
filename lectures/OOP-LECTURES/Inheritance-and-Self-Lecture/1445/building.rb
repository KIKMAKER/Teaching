class Building
  attr_reader :width, :length #:name
  attr_accessor :name # get and set instance variables

  def initialize(name, width, length)
    @name = name
    @width = width
    @length = length
  end

  def floor_size
    @width * @length
  end

end


#  my_building = Building.new("Deaneville", 13, 25)
# p my_building.name
# p my_building.width
# p my_building.length

# p my_building.name = "Kiki's Building"
# p my_building.floor_size
