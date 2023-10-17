require "csv"
require_relative "../models/meal"

class MealRepository
  def initialize(meal_csv_file)
    @meals = []
    @csv_file = meal_csv_file
    @next_id = 1
    load_csv
  end

  def create(new_meal)
    new_meal.id = @next_id
    @meals << new_meal
    # @next_id = @meals.empty? ? 1 : @meals.last.id + 1
    @next_id += 1
    save_csv
  end

  def all
    @meals
  end

  def find(meal_id)
    @meals.find { |meal| meal.id == meal_id.to_i }
  end

  def edit(meal, edit_name, edit_price)
    @meals[meal].name = edit_name
    @meals[meal].price = edit_price
    save_csv
  end

  def destroy(meal_id)
    @meals.delete_at(meal_id)
    save_csv
  end

  private

  def load_csv
    if File.exist?(@csv_file)
      CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
        row[:id] = row[:id].to_i
        row[:price] = row[:price].to_i
        meal_new = Meal.new(row)
        @meals << meal_new
      end
    end
    @next_id = @meals.empty? ? 1 : @meals.last.id + 1
  end

  def save_csv
    CSV.open(@csv_file, "wb") do |csv|
      csv << ["id", "name", "price"]
      @meals.each do |meal|
        csv << [meal.id, meal.name, meal.price]
      end
    end
  end
end
