### Need to require the files of the classes we are inheriting from
require_relative 'building'
### Need to require the files of the classes we are instantiating
require_relative 'butler'

class Castle < Building
  attr_accessor :moat, :category, :butler, :ruler_name

  def initialize(name, width, length, ruler_name, butler_name)
    super(name, width, length)
    @ruler_name = ruler_name
    @butler = Butler.new(self, butler_name) # We need to pass the current instance of Castle
  end

  def ownership_details
    "#{@name} is ruled by #{ruler_name}"
  end

  def ruler_name
    @ruler_name.capitalize
  end

  def self.categories
    return ["Medieval", "Norman", "Classic"]
  end

  def has_moat?
    @moat == true
  end

  def create_moat
    @moat = true
  end

  def floor_size
    super + 500
    puts "self: #{self}"
  end

  def capitalize_name
    self.name.capitalize
  end

end

p my_castle = Castle.new("Buckingham Palace", 10000, 2000, "The King", "jeeves")
# p my_castle.name
# p my_castle.floor_size
# p my_castle.capitalize_name
# p my_castle.has_moat?
# p my_castle.create_moat
# p my_castle.has_moat?
# p my_castle.floor_sizes
# p Castle.categories
# p my_castle.category

# p Castle.price_per_square_meter("Brussels")
p "*****************************"
p my_castle.ownership_details
p "*****************************"
p my_castle.butler.clean_castle
