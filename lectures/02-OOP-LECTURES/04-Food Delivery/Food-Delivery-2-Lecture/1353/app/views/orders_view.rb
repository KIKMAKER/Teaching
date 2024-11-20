class OrdersView

  def display(meals)
    meals.each_with_index do |meal, index|
      puts "#{index + 1} - #{meal.name}"
    end

  end

  def display_riders(riders)
    riders.each_with_index do |rider, index|
      puts "#{index + 1} - #{rider.username}"
    end

  end

  def ask_for_index
    puts "which index?"
    gets.chomp.to_i - 1
  end

  def display_orders(orders)
    orders.each_with_index do |order, index|
      status = order.delivered? ? "X" : " "
      puts "#{index + 1} [#{status}] - #{order.meal.name} for #{order.customer.name} delivered by #{order.employee.username}"
    end
  end
end
