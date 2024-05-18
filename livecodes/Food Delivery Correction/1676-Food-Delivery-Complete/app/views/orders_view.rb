class OrdersView

  def display_list(riders)
    riders.each_with_index do |rider, index|
      puts "#{index + 1}. #{rider.username}"
    end
  end

  def display_orders(orders)
    orders.each_with_index do |order, index|
      puts "#{index + 1}. 1 x #{order.meal.name} for #{order.customer.name}"
      puts "Delivered by #{order.employee.username}"
    end
  end

  def ask_for(something)
    puts "What is the #{something}?"
    gets.chomp
  end
end
