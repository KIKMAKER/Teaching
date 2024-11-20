# JOB - To take instructions from the user and send them to the right controller method

class Router

  def initialize(controller)
    @controller = controller
  end

  def run
    puts "Welcome to your TASK APP"
    loop do
      puts "What do you want to do?"
      puts "1 - Add a task"
      puts "2 - List all tasks"
      puts "3 - Mark a task as complete"
      user_choice = gets.chomp.to_i

      case user_choice
      when 1
        @controller.add
      when 2
        @controller.list
      when 3
        @controller.mark
      else
        puts "invalid input"
      end
    end
  end


end
