class Building
  attr_reader :width, :length
  attr_writer :length

  def initialize(width, length)
    @width = width
    @length = length
  end

  def floor_area
    @width * @length
  end
end
