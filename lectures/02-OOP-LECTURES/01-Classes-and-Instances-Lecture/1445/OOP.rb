# OOP = OBJECT
# OOP = DATA + BEHAVIOUR

# String = "Kiki"
# String = "Kiki" + "Kiki".upcase

name = "Kiki"

# name is an instance of the string class
p name.class

# when I create a new string I am actually using .new
name = String.new("Kiki")

# What if the data I want to model, doesn't fit well into the built in data types
#(string, integer, array etc.)
# eg
# cars = { car_1: {make: "Toyota", year: 2019}, car_2: {make: "Suzuki", year: 2020}}
# better to have a class where we can model a car, store data in the car object
# and define our own methods (behaviours) of the class.
