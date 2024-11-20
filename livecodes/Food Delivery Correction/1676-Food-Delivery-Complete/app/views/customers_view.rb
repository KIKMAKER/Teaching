class CustomersView

  def display_list(customers)
    customers.each_with_index do |customer, index|
      div
     
      puts "#{index + 1}. #{customer.name}: #{customer.address}"
    end
  end

  def ask_for(something)
    puts "What is the customer #{something}?"
    gets.chomp
  end
end
