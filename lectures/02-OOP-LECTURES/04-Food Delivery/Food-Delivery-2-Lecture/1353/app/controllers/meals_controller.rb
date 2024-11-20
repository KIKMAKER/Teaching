require_relative "../views/meals_view"
require_relative "../models/meal"

class MealsController
  def initialize(meal_repository)
    @meal_repository = meal_repository
    @meals_view = MealsView.new
  end

  def list
    meals = @meal_repository.all
    @meals_view.display_list(meals)
  end

  def add
    new_meal_name = @meals_view.ask_for_name
    new_meal_price = @meals_view.ask_for_price
    new_meal = Meal.new(name: new_meal_name, price: new_meal_price)
    @meal_repository.create(new_meal)
  end

  def edit
    list
    meal_id = @meals_view.ask_user("Which meal do you want to edit").to_i
    edit_name = @meals_view.ask_for_name
    edit_price = @meals_view.ask_for_price
    meal = @meal_repository.find(meal_id).to_i
    @meal_repository.edit(meal, edit_name, edit_price)
    # display meals again
    list
  end

  def destroy
    list
    meal_id = @meals_view.ask_user("Which meal do you want to destroy").to_i
    @meal_repository.destroy(meal_id - 1)
    list
  end
end
