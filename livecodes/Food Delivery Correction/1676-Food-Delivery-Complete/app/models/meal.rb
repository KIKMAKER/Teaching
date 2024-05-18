class Meal
  attr_reader :name, :price
  attr_accessor :id

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name] #=> "chicken pie"
    @price = attributes[:price]
  end
end
