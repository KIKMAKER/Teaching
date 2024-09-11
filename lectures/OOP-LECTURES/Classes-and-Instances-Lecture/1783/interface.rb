require_relative 'carbonated_drink.rb'

my_drink = CarbonatedDrink.new("purple", 200)
# p my_drink

# my_drink.goes_flat

# p my_drink
# my_drink.loses_bubles
# p my_drink

pink_drink = CarbonatedDrink.new("pink", 200)
drinks = [my_drink, pink_drink]


drinks.each do |drink|
  drink.refizz
end
