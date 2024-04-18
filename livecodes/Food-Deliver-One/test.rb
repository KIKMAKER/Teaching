require_relative './app/models/employee.rb'
require_relative './app/repositories/employee_repository.rb'
# require_relative './app/models/customer.rb'
require_relative './app/repositories/order_repository.rb'

# TODO: require relevant files to bootstrap the app.
require_relative "./app/repositories/meal_repository"
require_relative "./app/controllers/meals_controller"
require_relative "./app/repositories/customer_repository"
require_relative "./app/controllers/customers_controller"
require_relative "./app/repositories/employee_repository"
require_relative "./app/controllers/sessions_controller"
# require_relative "./app/repositories/order_repository"
# require_relative "./app/controllers/orders_controller"
require_relative "router"

# Then you can test your program with:
#   ruby app.rb


meal_csv_file = File.join(__dir__, "./data/meals.csv")
meal_repository = MealRepository.new(meal_csv_file)
meals_controller = MealsController.new(meal_repository)

customer_csv_file = File.join(__dir__, "./data/customers.csv")
customer_repository = CustomerRepository.new(customer_csv_file)
customers_controller = CustomersController.new(customer_repository)

employee_csv_file = File.join(__dir__, "./data/employees.csv")
employee_repository = EmployeeRepository.new(employee_csv_file)
sessions_controller = SessionsController.new(employee_repository)

router = Router.new(meals_controller, customers_controller, sessions_controller)

# router.run


# repo = EmployeeRepository.new('./app/data/employees.csv')

# p repo

repo = OrderRepository.new('./app/data/orders.csv', meal_repository, customer_repository, employee_repository)

p repo
