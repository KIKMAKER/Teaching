# # TODO: require relevant files to bootstrap the app.
# # Then you can test your program with:
# #   ruby app.rb
require_relative './app/repositories/meal_repository.rb'
require_relative './app/controllers/meals_controller.rb'
require_relative './app/repositories/customer_repository.rb'
require_relative './app/controllers/customers_controller.rb'
require_relative './router.rb'


csv_file = File.join(__dir__, './data/meals.csv')
meals_repository = MealRepository.new(csv_file)
meals_controller = MealsController.new(meals_repository)

csv_file = File.join(__dir__, './data/customers.csv')
customers_repository = CustomerRepository.new(csv_file)
customers_controller = CustomersController.new(customers_repository)

router = Router.new(meals_controller, customers_controller)

router.run






# require_relative 'cookbook'
# require_relative 'controller'
# require_relative 'router'

# csv_file   = File.join(__dir__, 'recipes.csv')
# cookbook   = Cookbook.new(csv_file)
# controller = Controller.new(cookbook)

# router = Router.new(controller)

# # Start the app
# router.run
