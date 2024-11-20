require_relative '../views/meals_view'
require_relative '../views/orders_view'
require_relative '../views/sessions_view'
class OrdersController
  def initialize(meal_repository, customer_repository, employee_repository, order_repository)
    @meal_repository = meal_repository
    @customer_repository = customer_repository
    @employee_repository = employee_repository
    @meals_view = MealsView.new
    @customers_view = CustomersView.new
    @sessions_view = SessionsView.new

    @order_repository = order_repository
    @orders_view = OrdersView.new
  end

  def add
    meal = get_meal
    customer = get_customer
    employee = get_employee
    # make the order (MODEL)
    order = Order.new(meal: meal, customer: customer, employee: employee)
    # p order
    # create it in the repo (REPO)
    @order_repository.create(order)
  end

  def list_undelivered_orders
    undelivered_orders = @order_repository.undelivered_orders
    @orders_view.display(undelivered_orders)
  end

  def list_my_orders(rider)
    my_orders = @order_repository.my_undelivered_orders(rider)
    @orders_view.display(my_orders)
  end

  def mark_as_delivered(rider)
    # get the order
    # display the orders
    my_orders = @order_repository.my_undelivered_orders(rider)
    @orders_view.display(my_orders)
    order_index = @orders_view.ask_for_index
    order = my_orders[order_index]
    @order_repository.mark_as_delivered(order)
  end

  private

  def get_meal
    # get the meal (VIEW)
    # display all meals
    meals = @meal_repository.all
    @meals_view.display(meals)
    # get meal index
    meal_index = @orders_view.ask_for_index
    meal = meals[meal_index]
    meal
  end

  def get_customer
    # get the customer (VIEW)
    customers = @customer_repository.all
    @customers_view.display(customers)
    # get customer index
    customer_index = @orders_view.ask_for_index
    customer = customers[customer_index]
  end

  def get_employee
    # get the employee (VIEW)
    employees = @employee_repository.all_riders
    @sessions_view.display(employees)
    # get employee index
    employee_index = @orders_view.ask_for_index
    employee = employees[employee_index]
  end
end
