#  TODO: Define your Controller Class here, to orchestrate the other classes
require_relative 'recipe'
require_relative 'view'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end


  def add
    # get the recipe name from the user (VIEW)
    name = @view.ask_for("name")
    # get the recipe description from the user (VIEW)
    description = @view.ask_for("description")
    # create an instance of the recipe class (MODEL)
    new_recipe = Recipe.new(name, description)
    # send an instance of recipe to the cookbook (REPO)
    @cookbook.create(new_recipe)
  end

  def list
    display_recipes
  end

  def remove
    # display all the recipes
    display_recipes
    # ask the user which one to delete
    index = @view.ask_for("number that you want to delete").to_i - 1
    # tell the cookbook to delete the recipe with that index
    @cookbook.destroy(index)
  end

  private

  def display_recipes
    # get all the recipes from the cookbook (REPO)
    recipes = @cookbook.all
    # display a list of al recipes (VIEW)
    @view.display_list(recipes)
  end
end
