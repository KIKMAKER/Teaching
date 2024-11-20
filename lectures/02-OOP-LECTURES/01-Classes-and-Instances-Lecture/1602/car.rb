require 'date'
# OOP = DATA + BEHAVIOUR

# String = "kiki" + "kiki".upcase

# CONVENTION
#file name - lower snake case
# le_wagon_student

#class name - upper camel case
# LeWagonStuden

class Car
  # getter
  attr_reader :make #:color
  # setter
  attr_writer #:color
  # getter + setter
  attr_accessor :color

# constructor method
def initialize(make, model, color, year, condition)
  # instance variables
  @make = make
  @model = model
  @color = color
  @year = year
  @condition = condition
  @engine_started = false
  @clean = false
end

# equivalent to attr_reader :color
# def color
#   @color
# end

#instance methods
def engine_started?
  @engine_started
end

def age_of_car
  Time.now.year - @year
end

def start_engine!
  charge_battery
  ignite_fuel_pump
  @engine_started = true
end

# make some methods private so that we can't call them
# kikis_car.ignite_fuel_pump

def clean_car!
  @clean = true
end

# equivalent to attr_writer :make
# def make(new_make)
#   @make = new_make
# end

private

  def charge_battery
    #some code
  end

  def ignite_fuel_pump
    #some code
  end
  #class end
end

kikis_car = Car.new("Nissan", "NP200", "white", 2021, "excellent")
p kikis_car.color

p kikis_car.color = "red"
p kikis_car

# kikis_car.engine_started?
# kikis_car.start_engine!
# p kikis_car

# p mikes_car = Car.new("Toyota", "yaris", "grey", 2012, "like new minus hubcaps")
# mikes_car.clean_car!
# mikes_car.paint!("red")

# p mikes_car.age_of_car

# p mikes_car
