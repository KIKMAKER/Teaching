class OrdersView

  def ask_for_index(something)
    puts "What is the #{something} index?"
    gets.chomp.to_i - 1
  end

  def display_meals_with_index(meals)
    meals.each_with_index do |meal, index|
     puts "#{index + 1} - #{meal.name}"
    end
  end

  def display_customers_with_index(customers)
    customers.each_with_index do |customer, index|
     puts "#{index + 1} - #{customer.name}"
    end
  end

  def display_employees_with_index(employees)
    employees.each_with_index do |employee, index|
     puts "#{index + 1} - #{employee.username}"
    end
  end

  def display_undelivered_orders(orders)
    orders.each_with_index do |order, index|
     puts "#{index + 1}. #{order.customer.name} ordered #{order.meal.name} to #{order.customer.address} delivered by #{order.employee.username}"
    end
  end
end

#
