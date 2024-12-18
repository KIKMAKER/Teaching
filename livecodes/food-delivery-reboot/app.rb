# TODO: require relevant files to bootstrap the app.
# Then you can test your program with:
#   ruby app.rb
require_relative 'router'

require_relative 'app/controllers/meals_controller'
require_relative 'app/repositories/meal_repository'

require_relative 'app/controllers/customers_controller'
require_relative 'app/repositories/customer_repository'

meal_csv = File.join(__dir__, 'data/meals.csv')
meal_repository = MealRepository.new(meal_csv)
meals_controller = MealsController.new(meal_repository)

customer_csv = File.join(__dir__, 'data/customers.csv')
customer_repository = CustomerRepository.new(customer_csv)
customers_controller = CustomersController.new(customer_repository)

router = Router.new(meals_controller, customers_controller)

router.run
