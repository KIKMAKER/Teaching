require_relative '../views/meals_view.rb'
require_relative '../models/meal.rb'
class MealsController
  def initialize(meal_repository)
    @meal_repository = meal_repository
    @meals_view = MealsView.new

  end

  def list
    meals = @meal_repository.all
    @meals_view.display(meals)
  end


  def add
    # get a meal name from the view and store it in a variable
    name = @meals_view.ask_for("name")
    # get a meal price from the view and store it in a variable
    price = @meals_view.ask_for("price").to_i
    # create a new instance of meal
    meal = Meal.new(name: name, price: price)
    # send it to the repo for safe keeping
    @meal_repository.create(meal)
  end

end
