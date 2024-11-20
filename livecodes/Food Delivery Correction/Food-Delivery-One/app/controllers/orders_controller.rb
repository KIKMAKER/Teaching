require_relative '../views/orders_view.rb'
require_relative '../models/order.rb'
class OrdersController
  def initialize(order_repository, meal_repository, customer_repository, employee_repository)
    @order_repository = order_repository
    @meal_repository = meal_repository
    @customer_repository = customer_repository
    @employee_repository = employee_repository
    @orders_view = OrdersView.new
  end

  def add
    # Get the meal
    meals = @meal_repository.all
    # Ask the user + display the meals
    @orders_view.display_meals_with_index(meals)
    meal_index = @orders_view.ask_for_index('meal')
    # find the meal by it's index
    meal = meals[meal_index]

    # Get the customer
    customers = @customer_repository.all
    # Ask the user + display the customers
    @orders_view.display_customers_with_index(customers)
    customer_index = @orders_view.ask_for_index('customer')
     # find the customer by it's index
    customer = customers[customer_index]

    # Get the employee
    employees = @employee_repository.all_riders
    # Ask the user + display the employees
    @orders_view.display_employees_with_index(employees)
    employee_index = @orders_view.ask_for_index('employee')
     # find the employee by it's index
    employee = employees[employee_index]

    # make the order
    order = Order.new(meal: meal, customer: customer, employee: employee)
    # p order.meal
    # p order.customer
    # p order.employee

    @order_repository.create(order)
  end

  def list_undelivered_orders
    orders = @order_repository.undelivered_orders
    p orders
    @orders_view.display_undelivered_orders(orders)
  end

end
