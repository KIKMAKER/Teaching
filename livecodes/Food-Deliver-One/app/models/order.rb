class Order
  attr_accessor :id, :employee
  attr_reader :meal, :customer, :delivered

  def initialize(attributes = {})
    @meal = attributes[:meal]
    @customer = attributes[:customer]
    @employee = attributes[:employee]
    @id = attributes[:id]
    @delivered = attributes[:delivered] || false
  end

  def delivered?
    @delivered == true
  end

  def deliver!
    @delivered = true
  end
end
