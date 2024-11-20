class Order
  attr_reader :meal, :customer, :employee
  attr_accessor :id, :delivered
  def initialize(attributes = {})
    @id = attributes[:id]
    @meal = attributes[:meal]
    @customer = attributes[:customer]
    @employee = attributes[:employee]
    @delivered = attributes[:delivered] || false
  end

  def delivered?
    @delivered
  end

  def delivered!
    @delivered = true
  end
end


# new_order.meal # instance of meal
# new_order.meal.name # string with the meals name
# new_meal.delivered # return true/false
# new_meal.delivered = true # change the state
