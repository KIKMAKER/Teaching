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
    puts "Welcome to Kiki's Delivery service"
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
    when 1 then @meals_controller.add
    when 2 then @meals_controller.list
    when 3 then @meals_controller.edit
    when 4 then @meals_controller.destroy
    when 5 then @customers_controller.add
    when 6 then @customers_controller.list
    when 7 then @orders_controller.add
    when 8 then @orders_controller.list_undelivered_orders
    when 9 then stop!
    when 10 then logout!
    else
      puts "Please press 1, 2, 3, 4, 5, 6, 7, 8, 9, or 10."
    end
  end


  def route_driver_action(action)
    case action
    # when 1 then @orders_controller.mark_as_delivered(@current_employee)
    # when 2 then @orders_controller.list_my_orders(@current_employee)
    when 3 then stop!
    when 4 then logout!
    else
      puts "Please press 1, 2, or 3."
    end
  end

  def stop
    logout!
    @running = false
  end

  def logout!
    @current_user = nil
  end

  def display_manager_menu
    puts ""
    puts "1. Add new meal"
    puts "2. List all meals"
    puts "3. Edit a meal"
    puts "4. Destroy a meal"
    puts "5. Add new customer"
    puts "6. List all customers"
    puts "7. Add a new order"
    puts "8. List undelivered orders"
    puts "9. Exit"
    puts "10. Logout"
    print "> "
  end

  def display_driver_menu
    puts ""
    puts "What do you want to do next?"
    puts "1 - Mark order as delivered"
    puts "2 - List all orders"
    puts "3. Exit"
    puts "4. Logout"
    print "> "
  end

end
