require_relative 'building.rb'
require_relative 'butler.rb'

class Castle < Building
  attr_accessor :moat
  attr_reader :butler

  def initialize(width, length, name)
    # super gos to the parent class
    # finds a method with the same name
    # runs that method
    super(width, length)
    @butler = Butler.new(self, name)
  end

  def has_moat
    @moat = true
  end


  # CLASS METHOD
  # called on the whole Class

  def self.categories
    array = ["Gregorian", "Gothic", "Medieval", "Modern"]
    puts "there are #{array.size} categories"
    return array
  end

  def self.price_per_square_meter(city)
    case city
    when "Paris" then 9000
    when "Brussels" then 3000
    else raise Exception.new("No data for #{city}")
    end
  end

end
Corn.new


# def Corn
#   def initialize
#     @grains = 0
#   end
# end
