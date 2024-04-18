require_relative 'view'
require_relative 'recipe'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    # get all the recipes from the repository (cookbook)
    recipes = @cookbook.all
    # display them to the user
    @view.display_list(recipes)
  end

  def add
    # ask the user for a name (VIEW)
    name = @view.ask_for("name")
    # ask the user for a description (VIEW)
    description = @view.ask_for("description")
    # create the new instance of recipe (MODEL)
    recipe = Recipe.new(name, description)
    # store the new instance of recipe in the cookbook (REPO)
    @cookbook.create(recipe)
  end

  def remove
    # list all the recipes (list method)
    list
    # ask the user which recipe to remove (index) (VIEW)
    index = @view.ask_for("index").to_i - 1
    # tell the cookbook to delete the recipe at that index (REPO)
    @cookbook.destroy(index)
    # list the recipes again (list method)
    list
  end
end
