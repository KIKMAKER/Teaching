# TODO: implement the router of your app.

class Router

  def initialize(meals_controller, customers_controller, sessions_controller, orders_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @sessions_controller = sessions_controller
    @orders_controller = orders_controller
    @running = true
  end

  def run
    puts "Welcome to Kiki's Delivery Service"
    while @running
      @employee = @sessions_controller.login
      while @employee
        # display the options to the user
        if @employee.manager?
          display_manager_options
          action = gets.chomp.to_i
          route_manager(action)
        else
          display_rider_options
          # get the user input
          action = gets.chomp.to_i
          # route it to the correct controller action
          route_rider(action)
        end
      end
    end
  end

  def display_manager_options
    puts "What would you like to do?"
    puts "1 - List all meals"
    puts "2 - Add a meal"
    puts "3 - List all customers"
    puts "4 - Add a customer"
    puts "5 - Add an order"
    puts "6 - List undelivered orders"
    puts "8 - Logout"
    puts "9 - Exit the app"
  end

  def route_manager(action)
    case action
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add
    when 3 then @customers_controller.list
    when 4 then @customers_controller.add
    when 5 then @orders_controller.add
    when 6 then @orders_controller.list_undelivered_orders
    when 8 then logout
    when 9 then stop
    end
  end

  def display_rider_options
    puts "What would you like to do?"
    puts "1 - List all my orders"
    puts "2 - Mark order as delivered"

    puts "8 - Logout"
    puts "9 - Exit the app"
  end

  def route_rider(action)
    case action
    when 1 then @orders_controller.list_my_orders(@employee)
    when 2 then @orders_controller.mark_as_delivered(@employee)
    when 8 then logout
    when 9 then stop
    end
  end

  def logout
    puts "logging you out"
    @employee = nil
  end

  def stop
    logout
    puts "Exiting... Good bye!"
    @running = false
  end

end
