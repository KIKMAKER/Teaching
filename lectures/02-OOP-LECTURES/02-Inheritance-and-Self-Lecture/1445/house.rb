require_relative 'building'
class House < Building

  # example of definig a class method - not be called on an INSTANCE, but on
  # the WHOLE CLASS (House.price_per_square_meter(city))
  def self.price_per_square_meter(city)
    case city
    when "Paris" then 9000
    when "Brussels" then 3000
    else raise Exception.new("No data for #{city}")
    end
  end

end


p my_house = House.new("Deaneville", 13, 25)
p my_house.name
p my_house.width
p my_house.length

my_house.name = "Kiki's House"
p my_house.floor_size


p House.price_per_square_meter("Brussels")
