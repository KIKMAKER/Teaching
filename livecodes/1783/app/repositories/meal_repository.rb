require 'csv'
require_relative '../models/meal.rb'

class MealRepository
  def initialize(csv_file)
    @csv_file = csv_file
    @meals = []
    @next_id = 1
    load_csv if File.exist?(csv_file)
  end

  def all
    @meals
  end

  def create(meal)
    meal.id = @next_id
    @meals << meal
    @next_id += 1
    save_csv
  end

  def find(id)
    # go through meals array and FIND the first meal with the matching id
    @meals.find do |meal|
      meal.id == id
    end
  end


  private

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      # update the data types
      row[:id] = row[:id].to_i
      row[:price] = row[:price].to_i
      @meals << Meal.new(row)
    end
    @next_id = (@meals.empty? ? 1 : @meals.last.id + 1)
  end

  def save_csv
    CSV.open(@csv_file, "wb") do |csv|
      csv << ["id","name","price"]
      # create a row FOR EACH meal in the meals array
      @meals.each do |meal|
        csv << [meal.id, meal.name, meal.price]
      end
    end
  end

end
