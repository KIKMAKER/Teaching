#  TODO: Define your Recipe class here
class Recipe
  attr_reader :name, :description

  def initialize(name, description)
    @name = name
    @description = description
  end

    # same as attr_reader :name
  # def name
  #   @name
  # end
end

# butternut_roti = Recipe.new("BN roti", "yum with sultanas")

# p butternut_roti.name
