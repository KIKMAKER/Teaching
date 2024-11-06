require_relative 'building'
class House < Building
  # # create the methods to read and write attributes
  # attr_reader :length # shortcut for def width (and others)
  # # attr_writer :width # shortcut for def width=
  # attr_accessor :width # replaces reader & writer

  # # assign attributes to my class using the initialize method (STATE)
  # def initialize(length, width)
  #   # variables given to the .new method
  #   @length = length
  #   @width = width
  #   # default values can be assigned here
  #   @sold = false # boolean
  # end

  # # METHODS i.e BEHAVIOUR of the class
  # # explicit reader
  # # def width
  # #   return @width
  # # end

  # # best practice to make boolean method explicitly (???)
  # def sold?
  #   return @sold
  # end

  # def area
  #   return @length * @width
  # end

  def display_details
    puts "This house is #{@length}m long."
    puts "It is #{@width}m wide"
    puts "The total area is #{area}"
  end

  def on_show(date)
    puts "The #{self.area} square meter house will be on show on #{date}"
  end

  def self.price_per_square_meter(city)
    case city
    when "Paris" then 9000
    when "Brussels" then 3000
    else raise Exception.new("No data for #{city}")
    end
  end

end

p House.price_per_square_meter("Cape Town")





new_house = House.new(30, 20)
new_house.display_details

new_house.on_show("Monday 3 November)
p new_house
p new_house.area

p new_house.sold?
puts "renovating"
p new_house.width = 25
p new_house.length

new_house.display_details


# class Time


#   def self.now
#     Time.new(24-10-2024 10:00)
#   end
# end
