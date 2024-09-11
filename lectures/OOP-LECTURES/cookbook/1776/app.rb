require_relative 'router.rb'
require_relative 'repository.rb'
require_relative 'controller.rb'

repo = Repository.new
controller = Controller.new(repo)
router = Router.new(controller)

router.run
