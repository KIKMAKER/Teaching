require_relative 'restaurant'
# inherits all states and behaviours from
class FastFoodRestaurant < Restaurant

  # def open?
  #   if Time.now.hour >= 6 && Time.now.hour < 22
  #     return true
  #   elsif Time.now.hour >= 9 && Time.now.hour < 10
  #     return false
  #   else
  #     false
  #   end
  # end

end

burger_king = FastFoodRestaurant.new("Burger King", "45 Loop St", false)
# # undefined method "address" unless explicit reader or attr_reader
p burger_king.address

# change the value of vegan with a writer method
burger_king.vegan = true
puts "is BK vegan?"
# specific vegan? method because it returns true or false
p burger_king.vegan?
puts "Is BK open?"
p burger_king.open
