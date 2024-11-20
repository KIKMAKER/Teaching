require_relative 'car'

# instantiate an instance of the class car and store it in a variable
my_car = Car.new("red", "Mazda", 2020)

# p my_car.colour
# puts "My car is a #{my_car.colour} #{my_car.make}"
p my_car
# p my_car.make
# p your_car = Car.new

# reassign the variable colour to "white"
my_car.colour = "White"
# call the instance method on the instance of the class
my_car.start_engine

# puts "My car is a #{my_car.colour} #{my_car.make}"

# p my_car.colour
p my_car
# instantiate another instance of the car class
p another_car = Car.new("purple", "BMW", 1987)

# can't call private methods outside of the car class
# my_car.igiting_spark_plug


# account.balance = 10000000000000
# puts "whats your balance"
# account.balance = gets.chomp
