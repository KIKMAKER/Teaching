#  TODO: Define your Recipe class here
class Recipe
  attr_reader :name, :description

  def initialize(name, description)
    @name = name
    @description = description
  end

  # explicit instance variable reader
  # def name
  #   @name
  # end
end


# new_recipe = Recipe.new("Chocolate Cake", "Made with real chocolate")


# new_recipe.name #= "Chocolate Cake"
