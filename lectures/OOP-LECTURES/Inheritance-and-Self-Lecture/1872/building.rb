# parent class
class Building
  attr_reader :length
  attr_accessor :width

  def initialize(length, width)
    @length = length
    @width = width
    @sold = false
  end

  def sold?
    @sold
  end

  def area
    @length * @width
  end

  def sell!
    @sold = true
  end

end


new_building = Building.new(80, 120)

new_building.width = 250

new_building.sell!
