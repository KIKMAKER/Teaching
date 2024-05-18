require_relative 'restaurant'
require_relative 'chef'
# inherits states and behaviours from restaurant class
class GastronomicRestaurant < Restaurant
  attr_reader :chef, :star_rating
  def initialize(name, address, vegan, star_rating, chef_name)
    # builds a restaurant with the restaurant constructor
    # calling the initialize method with super
    super(name, address, vegan)
    # adds additional attributes unique to a gastronomical restaurant
    @star_rating = star_rating
    # creates a new instance of chef that has the restaurant itSELF as the restaurant
    @chef = Chef.new(self, chef_name)
  end

  def open
    # inside the method, self refers to the INSTANCE it was called on
    puts "#{self.name.upcase} requires a booking"
    # super calls the method with the same name in the parent class
    # can take arguments
    puts "#{super} it is"
    # puts "but you need to have a booking"
  end
end

pot_luck_club = GastronomicRestaurant.new("Pot Luck Club", "Biscuit Mill, Woodstock", false, 4, "John Wick")
# p pot_luck_club.address

# p pot_luck_club
# p pot_luck_club.star_rating
# pot_luck_club.open

p pot_luck_club.chef ### instance of chef
p pot_luck_club.chef.name ### calling chef instance method .name i.e "John Wick"
