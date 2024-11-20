# TODO: implement the router of your app.
class Router
  def initialize(meals_controller, customers_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @running = true
  end

  def run
    until @running == false
      display_actions
      action = gets.chomp.to_i
      dispatch(action)
    end
    puts "Good bye"
  end

  def display_actions
    puts "What do you want to do?"
    puts "1 - List all meals"
    puts "2 - Add a meal"
    puts "3 - List all customer"
    puts "4 - Add a customer"
    puts "5 - Quit"
  end

  def dispatch(action)
    case action
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add
    when 3 then @customers_controller.list
    when 4 then @customers_controller.add
    when 5 then stop
    else
      puts "incorrect action"
    end
  end

  def stop
    @running = false
  end
end
