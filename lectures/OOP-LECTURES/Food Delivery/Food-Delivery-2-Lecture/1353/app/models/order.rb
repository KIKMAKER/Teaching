class Order
  attr_accessor :id, :employee
  attr_reader :meal, :customer, :employee
  
  def initialize(attributes = {})
    @id = attributes[:id]
    @meal = attributes[:meal]
    @customer = attributes[:customer]
    @employee = attributes[:employee]
    @delivered = attributes[:delivered] || false
  end

  def delivered?
    # @delivered == true
    @delivered
  end

  def deliver!
    @delivered = true
  end
end
