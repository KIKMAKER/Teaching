require_relative 'building.rb'
class Skyscraper < Building
  # attr_reader :address
  # attr_accessor :price

  # def initialize(address, price)
  #   @address = address
  #   @price = price
  #   @sold = false
  # end

  # def sold?
  #   @sold
  # end

  def sell!
    super
    puts "Another Skyscraper sold in the city."
  end
end
