require_relative '../views/meals_view'

class MealsController
  def initialize(meal_repository)
    @meal_repository = meal_repository
    @view = MealsView.new
  end

  def list
    # get all the meals from the repo
    meals = @meal_repository.all
    # send them to a view to be displayed
    @view.display_list(meals)
  end

  def add
    # ask the user for a name
    name = @view.ask_for("name")
    # ask the user for a price
    price = @view.ask_for("price").to_i
    # create a meal instance
    meal = Meal.new(name: name, price: price)
    # send it to the repo
    @meal_repository.create(meal)
  end
end
