require_relative 'task_repository'
require_relative 'task_controller'
require_relative 'router'

repository = TaskRepository.new
controller = TaskController.new(repository)

router = Router.new(controller)

p repository
p controller
p router

router.run
