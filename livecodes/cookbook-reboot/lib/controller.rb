#  TODO: Define your Controller Class here, to orchestrate the other classes
require_relative 'view'
require_relative 'recipe'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new

  end

  def list
    # get all the recipes (REPO)
    recipes = @cookbook.all
    # display all the recipes (VIEW)
    @view.diplay_list(recipes)
  end

  def add
    # Ask the user for a name (VIEW)
    name = @view.ask_for_name
    # Ask the user for a description (VIEW)
    description = @view.ask_for_description
    # Make a new INSTANCE of recipe (MODEL)
    recipe = Recipe.new(name, description)
    # store it (COOKBOOK / REPO)
    @cookbook.create(recipe)
  end

  def remove
    list
    # Ask for the index
    index = @view.ask_for_index
    @cookbook.destroy(index)
  end
end
