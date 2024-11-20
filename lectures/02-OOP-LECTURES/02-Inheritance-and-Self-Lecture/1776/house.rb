require_relative 'building.rb'
class House < Building
  # attr_reader :width #:length
  # # if i NEED both a getter and a setter
  # attr_accessor :length # reader & writer in one

  # def initialize(width, length)
  #   # use this method to add attributes to an instance of the class
  #   # define instance variables with an '@'
  #   # instance variables dictate the STATE of our instances
  #   @width = width
  #   @length = length
  # end

  # # OBJECTS = STATE + BEHAVIOUR

  # # define the behaviours of the class with instance METHODS
  # # methods that I can call on instances of the class

  # def floor_area
  #   return @width * @length
  # end

  # explicit read -> replaced by a "GETTER"
  # def width
  #   return @width
  # end

  # explicit writer -> replaced by a "SETTER"
  # def length=(new_length)
  #   @length = new_length
  # end

end
