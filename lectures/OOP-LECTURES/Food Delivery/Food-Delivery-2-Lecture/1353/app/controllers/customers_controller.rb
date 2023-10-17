require_relative "../views/customers_view"
require_relative "../models/customer"
require "pry-byebug"

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
    new_customer_name = @customers_view.ask_user("New customer name")
    new_customer_address = @customers_view.ask_user("New customer address")
    new_customer = Customer.new(name: new_customer_name, address: new_customer_address)
    @customer_repository.create(new_customer)
    list
  end
end
