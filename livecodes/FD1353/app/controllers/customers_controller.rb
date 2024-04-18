require_relative '../views/customers_view.rb'
require_relative '../models/customer.rb'

class CustomersController
  def initialize(customer_repository)
    @customer_repository = customer_repository
    @customers_view = CustomersView.new

  end

  def list
    customers = @customer_repository.all
    @customers_view.display(customers)
  end


  def add
    # get a customer name from the view and store it in a variable
    name = @customers_view.ask_for("name")
    # get a customer price from the view and store it in a variable
    address = @customers_view.ask_for("address")
    # create a new instance of customer
    customer = Customer.new(name: name, address: address)
    # send it to the repo for safe keeping
    @customer_repository.create(customer)
  end

end
