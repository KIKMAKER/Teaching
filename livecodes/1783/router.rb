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
    until @running == false
      @current_user = @sessions_controller.login
      while @current_user
        if @current_user.manager?
          display_manager_actions
          action = gets.chomp.to_i
          dispatch_manager(action)
        else
          display_rider_actions
          action = gets.chomp.to_i
          dispatch_rider(action)
        end
      end
    end
    puts "Good bye"
  end

  def display_manager_actions
    puts "What do you want to do?"
    puts "1 - List all meals"
    puts "2 - Add a meal"
    puts "3 - List all customer"
    puts "4 - Add a customer"
    puts "5 - Add a new order"
    puts "8 - Logout"
    puts "9 - Quit"
  end

  def display_rider_actions
    puts "What do you want to do?"
    puts "1 - List my orders"
    puts "8 - Logout"
    puts "9 - Quit"
  end

  def dispatch_manager(action)
    case action
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add
    when 3 then @customers_controller.list
    when 4 then @customers_controller.add
    when 5 then @orders_controller.add
    when 8 then logout
    when 9 then stop
    else
      puts "incorrect action"
    end
  end

  def dispatch_rider(action)
    case action
    when 1 then @orders_controller.list_my_orders(@current_user)

    when 8 then logout
    when 9 then stop
    else
      puts "incorrect action"
    end
  end

  def logout
    puts "logging you out"
    @current_user = nil
  end

  def stop
    @current_user = nil
    @running = false
  end
end
