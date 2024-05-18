require_relative '../views/meals_view'
require_relative '../views/customers_view'
require_relative '../views/orders_view'

class OrdersController
  def initialize(order_repository, meal_repository, customer_repository, employee_repository)
    @order_repository = order_repository
    @meal_repository = meal_repository
    @meals_view = MealsView.new
    @orders_view = OrdersView.new
    @customer_repository = customer_repository
    @customers_view = CustomersView.new
    @employee_repository = employee_repository
  end

  def add
    # meal
    # get all the meals from the meal repo
    meals = @meal_repository.all
    # ask the manager(user) which meal to add
    @meals_view.display_list(meals)
    meal_index = @meals_view.ask_for("number").to_i
    # get that meal
    meal = meals[meal_index - 1]

    # customer
    # get all the meals from the meal repo
    customers = @customer_repository.all
    # ask the manager(user) which customer to add
    @customers_view.display_list(customers)
    customer_index = @customers_view.ask_for("number").to_i
    # get that customer
    customer = customers[customer_index - 1]

    # employee
    # get all the meals from the rider repo
    riders = @employee_repository.all_riders
    # ask the manager(user) which rider to add
    @orders_view.display_list(riders)
    rider_index = @orders_view.ask_for("number").to_i
    # get that rider
    rider = riders[rider_index - 1]

    order = Order.new(meal: meal, customer: customer, employee: rider)
    @order_repository.create(order)
  end

  def list_undelivered_orders
    # get all undelivered orders from the order repo
    orders = @order_repository.undelivered_orders
    # send them to be displayed
    @orders_view.display_orders(orders)
  end

  def list_my_orders(employee)
    # get all my orders from the repo
    my_undelivered_orders = @order_repository.my_orders(employee)
    # send them to be displayed
    @orders_view.display_orders(my_undelivered_orders)
  end

  def mark_as_delivered(employee)
    list_undelivered_orders
    order_index = @orders_view.ask_for("number").to_i
    my_undelivered_orders = @order_repository.my_orders(employee)
    order = my_undelivered_orders[order_index - 1]
    @order_repository.mark(order)
  end

end
