# TODO: implement the router of your app.
class Router
  def initialize(meals_controller, customer_controller, sessions_controller, orders_controller)
    @meals_controller = meals_controller
    @customer_controller = customer_controller
    @sessions_controller = sessions_controller
    @orders_controller = orders_controller

    @running = true
  end

  def run
    puts "Welcome to Kiki's Delivery service"
    while @running
      @current_user = @sessions_controller.login
      while @current_user
        if @current_user.manager?
          # manager menu
          display_manager_menu
          action = gets.chomp.to_i
          route_manager_action(action)
        else
          # drivers
          display__driver_menu
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
    when 3 then @customer_controller.list
    when 4 then @customer_controller.add
    when 5 then @orders_controller.add
    when 6 then @orders_controller.list_undelivered_orders
    when 7 then logout!
    when 8 then stop
    else
      puts "Please press 1, 2, 3, 4 or 5."
    end
  end

  def route_driver_action(action)
    case action
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add
    when 3 then @customer_controller.list
    when 4 then @customer_controller.add
    when 5 then @orders_controller.mark_delivered
    when 6 then @orders_controller.my_undelivered_orders
    when 7 then logout!
    when 8 then stop
    else
      puts "Please press 1, 2, 3, 4 or 5."
    end
  end

  def logout!
    @current_user = nil
  end

  def stop
    @current_user = nil
    @running = false
  end

  def display_manager_menu
    puts ""
    puts "What do you want to do next?"
    puts "1 - List all meals"
    puts "2 - Create a new meal"
    puts "3 - List all customers"
    puts "4 - Add a new customer"
    puts "5 - Add an order"
    puts "6 - List undelivered orders"

    puts "7 - Logout"
    puts "8 - Stop and exit the program"
    print "> "
  end

  def display__driver_menu
    puts ""
    puts "What do you want to do next?"
    puts "1 - List all meals"
    puts "2 - Create a new meal"
    puts "3 - List all customers"
    puts "4 - Add a new customer"
    puts "5 - Mark an order delivered"
    puts "6 - List undelivered orders"
    puts "7 - Logout"
    puts "8 - Stop and exit the program"
    print "> "
  end
end
