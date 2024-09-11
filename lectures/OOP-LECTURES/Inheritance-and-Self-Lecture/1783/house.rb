require_relative 'building'
class House < Building
  # The House class is INHERITING all the STATES and BEHAVIOURS of the Building class








  def floor_size
    p self.rooms
    @rooms
    puts "calcuating the floor size of this #{sold? ? 'sold' : 'on the market'} building"
    @width * @length
  end

end

new_house = House.new(3, 20, 40)
p new_house.rooms
p new_house.floor_size










# Object Oriented Programming Language

# Make a house OBJECT

# An object has a STATE (data)
# i.e number of rooms, width and length

# An object also has BEHAVIOUR (methods)
# i.e floor_size, sell, see it's number of rooms, length and width
