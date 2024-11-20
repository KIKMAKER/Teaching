require_relative 'task_list'
require_relative 'controller'
require_relative 'router'


repository = TaskList.new
controller = Controller.new(repository)
router = Router.new(controller)
router.run
