# TODO: implement the router of your app.
class Router
  def initialize(meals_controller, customers_controller, sessions_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @sessions_controller = sessions_controller
    @running = true
  end

  def run
    puts "Welcome to Kiki's Delivery service"

    # TODO: nice image

    while @running
      @current_user = @sessions_controller.login
      while @current_user
        if @current_user.manager?
          display_manager_menu
          action = gets.chomp.to_i
          route_manager_action(action)
        else
          display_driver_menu
          action = gets.chomp.to_i
          route_driver_action(action)
        end
      end
    end
  end

  private

  def route_manager_action(action)
    case action
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add
    when 3 then @customers_controller.list
    when 4 then @customers_controller.add
    when 5 then stop
    when 7 then logout!
    else
      puts "Please press 1, 2, 3, 4 or 5."
    end
  end

  def route_driver_action(action)
    case action
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add
    when 3 then @customers_controller.list
    when 4 then @customers_controller.add
    when 5 then stop
    when 7 then logout!
    else
      puts "Please press 1, 2, 3, 4 or 5."
    end
  end

  def stop
    logout!
    @running = false
  end

  def display_manager_menu
    puts ""
    puts "What do you want to do next?"
    puts "1 - List all meals"
    puts "2 - Create a new meal"
    puts "3 - List all customers"
    puts "4 - Stuff drivers can't do"
    puts "5 - Stop and exit the program"
    puts "7 - Logout"
    print "> "
  end

  def display_driver_menu
    puts ""
    puts "What do you want to do next?"
    puts "1 - List all meals"
    puts "2 - Create a new meal"
    puts "3 - List all customers"
    puts "4 - Stuff managers can't do"
    puts "5 - Stop and exit the program"
    puts "7 - Logout"
    print "> "
  end

  def logout!
    @current_user = nil
  end
end
