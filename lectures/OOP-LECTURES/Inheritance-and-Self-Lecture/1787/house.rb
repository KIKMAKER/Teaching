require_relative 'building.rb'
class House < Building
  # attr_reader :address
  # # attr_writer :price
  # attr_accessor :price # read and write the value of @price

  # def initialize(address, price)
  #   # STATE / DATA of an instance of the class
  #   @address = address
  #   @price = price
  #   @sold = false
  # end

  # BEHAVIOUR / METHODS
  def sell!
    super #finds and executes the method in the parent class with the same name

    puts "Another house in the neighbourhood sold by us"
  end

  # def sold?
  #   @sold
  # end

  # def address
  #   @address
  # end

  def show_day
      # self -> the instance that the method is called on
      p self
    self.clean!
    puts "Organising a show day at #{self.address}"
    puts "Remember to bake bread so the house smells nice"
    puts "The price of the house is #{self.price}"
  end

  def self.categories
    ["apartment", "duplex", "free-standing", "plot"]
  end

  def self.price_per_square_meter(city)
    case city
    when "Paris" then 9000
    when "Brussels" then 3000
    when "cape town" then 1000
    else raise Exception.new("No data for #{city}")
    end
  end

  private

  def clean!
    @price += 100
    puts "cleaning the house to increase it's value"
  end

end
