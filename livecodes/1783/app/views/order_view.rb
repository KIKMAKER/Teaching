class OrderView
  def ask_which(something)
    puts "Pick a #{something}"
  end

  def get_index(something)
    puts "Choose a number"
    gets.chomp.to_i - 1
  end

  def display_riders(employees)
    employees.each_with_index do |employee, index|
      puts "#{index + 1}. #{employee.username}"
    end

  end

  def list_my_orders(undelivered_orders)
    undelivered_orders.each_with_index do |order, index|
      puts "#{index + 1} #{order.meal.name}, for #{order.customer.name} at #{order.customer.address} needs to be delivered."
    end
  end
end
