require_relative 'car.rb'
# keep the definition of the class in its own file
# interact with the user and the class in a separate file

# instances of a car

puts "what is the car colour?"
colour = gets.chomp

my_car = Car.new(colour, "nissan", 2021)
# my_car.ignite_spark_plugs


# p my_car
puts "it is #{my_car.engine_started?} that my #{my_car.colour} #{my_car.make}'s engine is started"

puts "painting my #{my_car.make}"

my_car.colour = "yellow"

puts "my #{my_car.make} is now #{my_car.colour}"

# puts "and"
your_car = Car.new("red", "ford", 1996)
# p your_car
# puts "it is #{your_car.engine_started?} that your_car's engine is started"
# puts " "

puts "starting your car"
your_car.start_engine
puts "it is #{your_car.engine_started?} that your #{your_car.colour} #{your_car.make}'s engine is started"

# p your_car



# methods before today were named blocks of code
#eg
def full_name(first, last)
  # some code
end
# called the method by its name
full_name("Kiki", "Kenn")

# instance methods are called ON an instance of a class and can change the state of the instance's instance variables
# eg
# call the mothod ON an instance of the class for which it is defined
my_car.start_engine


# class String
#   def initialize
#     @data = /.*/
#   end
#   def capitalize
#     @data[0].upcase
#   end
# end

# instance of a string
my_name = String.new("Kristen")
