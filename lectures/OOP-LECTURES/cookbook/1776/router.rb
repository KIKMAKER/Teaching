class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    puts "Welcome to your task app"
    user_action = ''
    until user_action == 5
      puts "What do you want to do?"
      puts "1 - add a task"
      puts "2 - list all tasks"
      puts "3 - mark a task complete"
      puts "4 - remove a task"
      puts "5 - quit"

      user_action = gets.chomp.to_i

      case user_action
      when 1
        # Ask the controller to manage:
        # get the description of the task
        # create the task
        # add it to the repo
        @controller.add
      when 2
        # Ask the controller to manage displaying all the tasks
        @controller.list
      when 3
        # Get the controller to manage:
        # Display the list of tasks
        # Ask which task to mark
        # get the task
        # mark it as complete
        @controller.mark_task
      when 4
      when 5
        puts "quitting"
      else
        puts "not an option"
      end
    end
    puts "Ciao"
  end

end
