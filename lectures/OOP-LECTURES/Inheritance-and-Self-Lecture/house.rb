require_relative 'building'
class House < Building
  ### No longer needed as we inherit all the below
  ### from the Builidng class
  # attr_accessor :name, :length, :width

  # def initialize(name, length, width)
  #   @name = name
  #   @length = length
  #   @width = width
  # end

  # def floor_size
  #   @length * @width
  # end

  # def name
  #   @name
  # end

  # def name(new_name)
  #   @name = new_name
  # end

end
# still works but info comes from the Building class
p my_house = House.new("Villa Rosa", 20, 10)
p my_house.floor_size
p my_house.name = "Mike's Place"
p my_house
