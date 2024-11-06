require_relative 'house.rb'
require_relative 'skyscraper.rb'
require_relative 'castle.rb'
require_relative 'butler.rb'
require 'date'

# p Date.today

first_house = House.new("33 Rainbow Road", 200)
second_house = House.new("33 Cherry Lane", 3000)
# p first_house
# p first_house.sold?
# first_house.price
# "updating the price"
# first_house.price = 2000
# # first_house.show_day
# first_house.price

# first_house.address = "now it's here" # need an attribute writer or accessor


# second_house.sold?
# second_house.sell!
# second_house.sold?

# first_house.show_day
# second_house.show_day


first_skyscraper = Skyscraper.new("20 Empire Road", 10000)




puts "Creating a castle at Royal Boulevard"
first_castle = Castle.new("20 Royal Boulevard", 200000, "Rosewood Castle")

p first_castle

the_butler = first_castle.butler

puts "The butler is:"

p the_butler

p "the butlers castle is:"
p the_butler.castle.name

p first_castle.butler.castle.butler.castle
# the_butler = Butler.new(first_castle)

# the_butler.clean_castle

# p the_butler
















# p first_skyscraper
# p first_skyscraper.sold?
# p first_castle
# p first_castle.sold?


# puts "---------"

# first_house.sell!
# p first_house.sold?
# first_skyscraper.sell!
# p first_skyscraper.sold?
# first_castle.sell!
# p first_castle.sold?


# p House.categories
# p House.price_per_square_meter("Paris")
# p House.price_per_square_meter("cape town")
# p House.price_per_square_meter("JHB")
