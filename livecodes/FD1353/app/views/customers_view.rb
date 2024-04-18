class CustomersView

  def display(customers)
    customers.each_with_index do |customer, index|
      puts "#{index + 1} - #{customer.name} at #{customer.address}"
    end
  end

  def ask_for(something)
    puts "what is the customer's #{something}?"
    gets.chomp
  end
end
