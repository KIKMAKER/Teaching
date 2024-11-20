class Router

  def initialize(tasks_controller)
    @tasks_controller = tasks_controller
    @running = true
  end

  def run
    puts "Welcome to your task list"
    until @running == false
      puts "What do you want to do? [list|add|mark|quit]"
      user_action = gets.chomp

      case user_action
      when "add"
        @tasks_controller.add
      when "list"
        @tasks_controller.list
      when "mark"
        @tasks_controller.mark
      when "quit"
        @running = false
      end
    end
    puts "Good bye!"
  end
end
