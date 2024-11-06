require_relative 'task_repository'
require_relative 'tasks_controller'
require_relative 'router'

# csv_file = File.join(__dir__, 'tasks.csv')
# task_repo = TaskRepository.new(csv_file)
task_repo = TaskRepository.new
tasks_controller = TasksController.new(task_repo)

router = Router.new(tasks_controller)
router.run
