require_relative 'building.rb'

class Skyscraper < Building
  # attr_reader :width, :length

  def initialize(width, length, floors)
    super(width, length)
    @floors = floors
  end

  def floor_area
    # calls the method with the same name from the parent class
    super * @floors
    # self inside a instance method
    # refers to the instance the method was called on
    puts "This Skyscraper has #{self.length}m length"
    puts "This Skyscraper has #{@width}m width"
  end

end
