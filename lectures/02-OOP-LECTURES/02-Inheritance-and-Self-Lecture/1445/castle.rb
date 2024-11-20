require_relative 'building'
require_relative 'butler'

class Castle < Building
  attr_reader :butler

  def initialize(name, width, height, ruler, butler_name)
    super(name, width, height)
    @ruler = ruler
    @butler = Butler.new(self, butler_name)
  end


  def floor_size
    # size = super + 300
    super + 300
    # puts "a castle is bigger than any normal building this one is #{size}m"
  end

  def self.categories
    ["Medieval", "Gothic", "Badass"]
  end

end

puts "THE CASTLE INSTANCE"
p my_castle = Castle.new("Deaneville", 13, 25, "Kiki", "James")
p jacks_castle = Castle.new("Jack's Great Palace", 15, 35, "King Jack", "Ronny")
puts "************************************"

puts "The Butlers are going to clean the castles"
p my_castle.butler.clean_castle
p jacks_castle.butler.clean_castle




# my_castle.name
# p my_castle.width
# p my_castle.length

# my_castle.name = "Kiki's Castle"
# p my_castle.floor_size

# p my_castle.has_butler?
# p Castle.categories
# p my_castle.categories # undefined method for instance of castle
