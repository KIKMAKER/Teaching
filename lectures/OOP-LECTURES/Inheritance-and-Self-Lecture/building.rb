### This is the parent class of House, Skyscraper and Castle

class Building
  attr_accessor :name, :length, :width

  def initialize(name, length, width)
    @name = name
    @length = length
    @width = width
  end

  def floor_size
    @length * @width
  end
  ### Self in a method name refers to the Class the method will be written for
  def self.price_per_square_meter(city)
    case city
    when "Paris" then 9000
    when "Brussels" then 3000
      # new is a class method called on the class Exception
    else raise Exception.new("No data for #{city}")
    end
  end
end
