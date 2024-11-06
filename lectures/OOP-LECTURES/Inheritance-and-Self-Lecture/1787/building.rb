class Building
  attr_reader :address
  attr_accessor :price

  def initialize(address, price)
    @address = address
    @price = price
    @sold = false
  end

  def sold?
    @sold
  end

  def sell!
    @sold = true
    puts "well done!"
  end
end
