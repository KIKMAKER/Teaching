require_relative 'building.rb'
require_relative 'butler.rb'

class Castle < Building
  attr_reader :name, :butler

  def initialize(address, price, name)
    super(address, price)
    @name = name
    @butler = Butler.new(self)
  end

  def sell!
    super
    puts "A magnificent castle changed ownership"
  end

end
