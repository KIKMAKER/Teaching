require_relative '../views/customer_view.rb'
require_relative '../models/customer.rb'

class CustomersController
  def initialize(customer_repository)
    @customer_repository = customer_repository
    @view = CustomerView.new
  end

  def list
    # get all the customers (REPO)
    customers = @customer_repository.all
    # display all the customers (VIEW)
    @view.display(customers)
  end

  def add
    # get the customer name (VIEW)
    name = @view.ask_for("name")
    # get the customer price (VIEW)
    address = @view.ask_for("address")
    # make the customer (MODEL)
    new_customer = Customer.new(name: name, address: address)
    # save it (REPO)
    @customer_repository.create(new_customer)
  end
end
