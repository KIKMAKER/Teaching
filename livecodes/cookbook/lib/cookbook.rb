require 'csv'
require_relative 'recipe'

class Cookbook
  def initialize(csv_file)
    @csv_file = csv_file
    #array holding instances of the recipe class a.k.a recipes
    @recipes = []
    load_csv
  end

  def all
    #return the full array of recipes
    @recipes
  end

  def create(recipe)
    # take recipe from the controller and put it in the recipes array
    @recipes << recipe
    # overwrite the csv with the new array
    save_csv
  end

  def destroy(index)
    # remove the recipe at the given index
    @recipes.delete_at(index)
    # overwrite the csv with the new array
    save_csv
  end

  private

  def load_csv
    # go through each row of the csv file and populate the recipes array
    CSV.foreach(@csv_file) do |row|
      # get the name from the array of strings
      name = row[0]
      # get the description from the array of strings
      description = row[1]
      # create a new instance of recipe
      recipe = Recipe.new(name, description)
      # add it to the recipes array
      @recipes << recipe

      # REFACTORED
      # @recipes << Recipe.new(row[0], row[1])
    end
  end

  def save_csv
    CSV.open(@csv_file, 'wb') do |csv|
      # go through the recipe array
      @recipes.each do |recipe|
        # create an array of strings for each recipe ["name", "description"]
        csv << [recipe.name, recipe.description]
      end
    end
  end
end
