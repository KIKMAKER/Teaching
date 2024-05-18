require_relative '../views/customers_view'

class CustomersController
  def initialize(customer_repository)
    @customer_repository = customer_repository
    @view = CustomersView.new
  end

  def list
    # get all the customers from the repo
    customers = @customer_repository.all
    # send them to a view to be displayed
    @view.display_list(customers)
  end

  def add
    # ask the user for a name
    name = @view.ask_for("name")
    # ask the user for a price
    address = @view.ask_for("address")
    # create a customer instance
    customer = Customer.new(name: name, address: address)
    # send it to the repo
    @customer_repository.create(customer)
  end
end
