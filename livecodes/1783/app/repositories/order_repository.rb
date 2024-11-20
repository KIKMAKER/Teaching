require 'csv'
require_relative '../models/order.rb'

class OrderRepository
  def initialize(csv_file, meal_repository, customer_repository, employee_repository)
    @csv_file = csv_file
    @meal_repository = meal_repository
    @customer_repository = customer_repository
    @employee_repository = employee_repository
    @orders = []
    @next_id = 1
    load_csv if File.exist?(csv_file)
  end

  def my_undelivered_orders(current_user)
    @orders.select do |order|
      order.employee == current_user && !order.delivered?
    end
  end

  def create(order)
    order.id = @next_id
    @orders << order
    @next_id += 1
    save_csv
  end

  private

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      # update the data types
      row[:id] = row[:id].to_i
      # row = {id: "1", delivered: "true", meal_id: 6, customer_id: "4", employee_id: "2", meal: <#Meal 347tnd743trq @name: >}

      # meal_id = row[:meal_id].to_i
      # meal = @meal_repository.find(meal_id)

      row[:meal] = @meal_repository.find(row[:meal_id].to_i)
      row[:customer] = @customer_repository.find(row[:customer_id].to_i)
      row[:employee] = @employee_repository.find(row[:employee_id].to_i)
      row[:delivered] = row[:delivered] == "true"
      @orders << Order.new(row)

    end
    @next_id = (@orders.empty? ? 1 : @orders.last.id + 1)
  end

  def save_csv
    CSV.open(@csv_file, "wb") do |csv|
      csv << ["id","delivered", "meal_id", "customer_id", "employee_id"]
      # create a row FOR EACH order in the orders array
      @orders.each do |order|
        csv << [order.id, order.meal.id, order.customer.id, order.employee.id]
      end
    end
  end

end
