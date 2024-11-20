require_relative '../views/meal_view'
require_relative '../views/order_view'
require_relative '../views/customer_view'
require_relative '../models/order'

class OrdersController
  def initialize(order_repository, meal_repository, customer_repository, employee_repository)
    @order_repository = order_repository
    @meal_repository = meal_repository
    @meal_view = MealView.new
    @customer_repository = customer_repository
    @customer_view = CustomerView.new
    @employee_repository = employee_repository
    @order_view = OrderView.new
  end

  def add
    ## get a meal
    @order_view.ask_which("meal")
    # gettin all the meals (MEAL REPO)
    meals = @meal_repository.all
    # displayin all the meals (MEAL VIEW)
    @meal_view.display(meals)
    # getting an meal index
    meal_index = @order_view.get_index("meal")
    # getting a meal
    meal = meals[meal_index]

    ## get a customer
    @order_view.ask_which("customer")
    # gettin all the customers (CUSTOMER REPO)
    customers = @customer_repository.all
    # displayin all the customers (CUSTOMER VIEW)
    @customer_view.display(customers)
    # getting an customer index
    customer_index = @order_view.get_index("customer")
    # getting a customer
    customer = customers[customer_index]

    # get an employee

    @order_view.ask_which("employee")
    # gettin all the employees (EMPLOYEE REPO)
    riders = @employee_repository.all_riders
    # displayin all the riders (EMPLOYEE VIEW)
    @order_view.display_riders(riders)
    # getting an employee index
    rider_index = @order_view.get_index("rider")
    # getting a riders
    rider = riders[rider_index]

    # create an order
    order = Order.new(meal: meal, customer: customer, employee: rider)

    # store it!
    @order_repository.create(order)
  end

  def list_my_orders(current_user)
    # get all my orders
    my_undelivered_orders = @order_repository.my_undelivered_orders(current_user)
    # send them to the view to be displayed
    @order_view.list_my_orders(my_undelivered_orders)

  end
end
