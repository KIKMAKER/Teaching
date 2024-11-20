require_relative '../views/meal_view.rb'
require_relative '../models/meal.rb'

class MealsController
  def initialize(meal_repository)
    @meal_repository = meal_repository
    @view = MealView.new
  end

  def list
    # get all the meals (REPO)
    meals = @meal_repository.all
    # display all the meals (VIEW)
    @view.display(meals)
  end

  def add
    # get the meal name (VIEW)
    name = @view.ask_for("name")
    # get the meal price (VIEW)
    price = @view.ask_for("price").to_i
    # make the meal (MODEL)
    new_meal = Meal.new(name: name, price: price)
    # save it (REPO)
    @meal_repository.create(new_meal)
  end
end
