require_relative 'cookbook'
require_relative 'controller'
require_relative 'router'

filepath = File.join(__dir__, './recipes.csv')
# p filepath
cookbook   = Cookbook.new(filepath)
# p cookbook
controller = Controller.new(cookbook)

router = Router.new(controller)

# Start the app
router.run
