require_relative 'house'
require_relative 'skyscraper'
require_relative 'castle'
require_relative 'butler'

# HOUSE
my_house = House.new(150, 90)
# p my_house
# puts "My floor area is: #{my_house.floor_area}"

# p my_house.width

# your_house = House.new(130, 100)
# p your_house
# p your_house.length
# puts "renovating"
# your_house.length = 109

# p your_house

# puts "Your floor area is: #{your_house.floor_area}"

# SKYSCRAPER

big_skyscraper = Skyscraper.new(200, 600, 90)
# p big_skyscraper
# p big_skyscraper.floor_area


# CASTLE

famous_castle = Castle.new(1800, 2000, "Jeeves")



# famous_castle = Castle.new(1800, 2000)
# puts "the castle instance:"
# p famous_castle
# puts "the butler instance"
# # butler = famous_castle.butler
# p famous_castle.butler
# puts "the castle instance"
# p famous_castle.butler.castle

# puts "the castles butler is #{famous_castle.butler.name}"

famous_castle.butler.clean_castle
# p famous_castle.floor_area

# famous_castle.has_moat
# puts "The castles butler is #{famous_castle.butler}"

# p Castle.categories
# p Castle.price_per_square_meter("Brussels")
# p Castle.price_per_square_meter("Cape Town")


# jeeves = Butler.new(famous_castle)

# p jeeves
# p jeeves.castle
