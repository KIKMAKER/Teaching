# TODO: Implement the Cookbook class that will be our repository
require 'csv'
require_relative 'recipe'
class Cookbook
  def initialize(csv)
    @recipes = []
    @csv = csv
    load_csv if File.exist?(csv)
  end

  def all
    @recipes
  end

  def create(recipe)
    @recipes << recipe
  end

  def destroy(index)
    @recipes.delete_at(index)
  end

  private

  def load_csv
    CSV.foreach(@csv) do |row|
      name = row[0]
      description = row[1]
      new_recipe = Recipe.new(name, description)
      @recipes << new_recipe
    end
    # p @recipes
  end
end
