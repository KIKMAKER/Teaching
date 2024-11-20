require_relative '../views/orders_view.rb'
class OrdersController
  def initialize(order_repository, meal_repository, customer_repository, employee_repository)
    @order_repository = order_repository
    @meal_repository = meal_repository
    @customer_repository = customer_repository
    @employee_repository = employee_repository
    @orders_view = OrdersView.new

  end

  def add
    # get all meals from meal repo
    meals = @meal_repository.all
    # display meals to manager (view)
    @orders_view.display(meals)
    # get index of the chosen meal
    meal_index = @orders_view.ask_for_index
    # get the instance of the chosen meal
    meal = meals[meal_index]

    # get all customers from customer repo
    customers = @customer_repository.all
    # display customers to manager (view)
    @orders_view.display(customers)
    # get index of the chosen customer
    customer_index = @orders_view.ask_for_index
    # get the instance of the chosen customer
    customer = customers[customer_index]

    # get all employee from customer repo
    riders = @employee_repository.all_riders
    # display employee to manager (view)
    @orders_view.display_riders(riders)
    # get index of the chosen employee
    employee_index = @orders_view.ask_for_index
    # get the instance of the chosen employee
    rider = riders[employee_index]

    order = Order.new(meal: meal, customer: customer, employee: rider)
    @order_repository.create(order)

  end

  def list_undelivered_orders
    orders = @order_repository.undelivered_orders
    @orders_view.display_orders(orders)
  end

  def mark_delivered
    orders = @order_repository.undelivered_orders
    @orders_view.display_orders(orders)
    index = @orders_view.ask_for_index
    order = orders[index]
    order.deliver!
    @order_repository.create(order)
  end

  def my_undelivered_orders
    orders = @order_repository.undelivered_orders
    p orders
    @orders_view.display_orders(orders)
  end

end
