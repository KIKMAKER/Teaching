require_relative '../models/order'
require 'csv'
class OrderRepository
  def initialize(orders_csv_path, meal_repository, customer_repository, employee_repository)
    @csv_file = orders_csv_path
    @meal_repository = meal_repository
    @customer_repository = customer_repository
    @employee_repository = employee_repository
    @orders = []
    @next_id = 1
    load_csv if File.exist?(orders_csv_path)
  end

  def create(order)
    order.id = @next_id
    @orders << order
    @next_id += 1
    save_csv
  end

  def undelivered_orders
    @orders.reject do |order|
      order.delivered?
    end
  end

  def my_undelivered_orders(rider)
    @orders.select do |order|
      order.employee.id == rider.id && !order.delivered?
    end
  end

  def mark_as_delivered(order)
    order.deliver!
    save_csv
  end

  private

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      row[:delivered] = row[:delivered] == "true"
      meal_id = row[:meal_id].to_i
      row[:meal] = @meal_repository.find(meal_id)
      customer_id = row[:customer_id].to_i
      row[:customer] = @customer_repository.find(customer_id)
      employee_id = row[:employee_id].to_i
      row[:employee] = @employee_repository.find(employee_id)
      # p row
      order = Order.new(row)
      # puts "#{order.customer.name} ordered a #{order.meal.name} which was delivered by #{order.employee.username}"
      @orders << order
    end
    @next_id = @orders.empty? ? 1 : @orders.last.id + 1
  end

  def save_csv
    CSV.open(@csv_file, 'wb') do |csv|
      csv << ["id", "delivered", "meal_id", "customer_id", "employee_id"]
      @orders.each do |order|
        csv << [order.id, order.delivered?, order.meal.id, order.customer.id, order.employee.id]
      end
    end
  end



end
