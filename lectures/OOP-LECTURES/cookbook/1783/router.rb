class Router

  def initialize(controller)
    @controller = controller
  end

  def run
    puts "Welcome to your TO DO LIST"
    action = ""
    until action == 'quit'
      puts "What do you want to do? [add | list | mark | quit]"
      action = gets.chomp
      perform_action(action)
    end
  end


  def perform_action(action)
    case action
    when "add"
      @controller.add
    when "list"
      @controller.list
    when "mark"
      @controller.mark
    when 'quit'
      puts "Adios!"
    else
      puts "sorry not an option"
    end
  end
end
