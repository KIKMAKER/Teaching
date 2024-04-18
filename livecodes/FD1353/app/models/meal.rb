class Meal
  attr_reader :name, :price
  attr_accessor :id

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @price = attributes[:price]
  end
end

# p fried_rice = Meal.new(name: "Kimchi Fried Rice", price: 119)
# p fried_rice.name
