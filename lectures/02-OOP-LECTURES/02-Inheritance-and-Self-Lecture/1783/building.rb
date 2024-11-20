class Building
  attr_reader :rooms, :width, :length

  def initialize(rooms, width, length)
    @rooms = rooms
    @width = width
    @length = length
    @sold = false
    # sold = false
  end

  def sold?
    @sold
  end


  def floor_size
    p self
    puts "calcuating the floor size of this #{sold? ? 'sold' : 'on the market'} building"
    @width * @length
  end

  def sell!
    @sold = true
  end
end

# new_house = House.new(3, 20, 40)
# p new_house.rooms
# p new_house.floor_size





# Object Oriented Programming Language

# Make a house OBJECT

# An object has a STATE (data)
# i.e number of rooms, width and length

# An object also has BEHAVIOUR (methods)
# i.e floor_size, sell, see it's number of rooms, length and width
