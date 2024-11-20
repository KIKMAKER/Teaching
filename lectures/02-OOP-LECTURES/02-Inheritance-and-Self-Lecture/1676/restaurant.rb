class Restaurant
  # short cuts to create getters and setters
  attr_reader :address
  attr_writer :vegan
  attr_accessor :name

  def initialize(name, address, vegan)
    @name = name
    @address = address
    @vegan = false
  end

  def open
    if Time.now.hour >= 10 && Time.now.hour < 14
      print "yes"
    elsif Time.now.hour > 15 && Time.now.hour < 22
      print "yes"
    else
     print "no"
    end
  end

  def vegan?
    @vegan
  end

  # define a class method by stating that the method will be called on the class itSELF
  def self.categories
    ["sushi", "american", "tapas"]
  end

  # replace the below three lines with attr_reader method
  # def address
  #   @address
  # end

  # writer method replaced by attr_writer
  # def vegan=(new_value)
  #   @vegan = new_value
  # end
end

plushi = Restaurant.new("Plushi", "96 Victoria Road", true)
# puts "Is Plushi open?"
# p plushi.open
# p plushi.category

# p Restaurant.categories #["sushi", "american", "tapas"]
