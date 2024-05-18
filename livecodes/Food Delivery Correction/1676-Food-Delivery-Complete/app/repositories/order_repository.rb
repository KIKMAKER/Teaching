require 'csv'
require_relative '../models/order'

class OrderRepository

  def initialize(csv_file_path, meal_repository, customer_repository, employee_repository)
    @csv_file_path = csv_file_path
    @meal_repository = meal_repository
    @customer_repository = customer_repository
    @employee_repository = employee_repository
    @orders = []
    @next_id = 1
    load_csv if File.exist?(@csv_file_path)
  end

  def all
    @orders
  end

  def undelivered_orders
    @orders.reject { |order| order.delivered? }
    # @orders.select { |order| !order.delivered? }
  end

  def my_orders(employee)
    @orders.select { |order| order.employee == employee && !order.delivered? }
  end

  def mark(order)
    order.deliver!
    save_csv
  end

  def create(order)
    order.id = @next_id
    @orders << order
    @next_id += 1
    save_csv
  end

  def find(id)
    @orders.find { |order| order.id == id }
  end

  private

  def load_csv
    CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      row[:meal] = @meal_repository.find(row[:meal_id].to_i)
      row[:customer] = @customer_repository.find(row[:customer_id].to_i)
      row[:employee] = @employee_repository.find(row[:employee_id].to_i)
      row[:delivered] = row[:delivered] == "true"
      order = Order.new(row)
      @orders << order
    end
    @next_id = @orders.empty? ? 1 : @orders.last.id + 1
  end

  def save_csv
    CSV.open(@csv_file_path, "wb") do |csv|
      csv << ["id", "delivered", "meal_id", "customer_id", "employee_id"]
      @orders.each do |order|
        csv << [order.id, order.delivered?, order.meal.id, order.customer.id, order.employee.id]
      end
    end
  end
end
