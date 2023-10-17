class CustomersView
  def display(customers)
    customers.each_with_index { |customer, index| puts "#{index + 1}. #{customer.name}" }
  end

  def ask_user(stuff)
    puts "#{stuff}?"
    print "> "
    gets.chomp
  end
end
