require_relative 'building'
class Skyscraper < Building
  def initialize(length, width, floors)
    super(length, width) # goes to the parent and runs the method with the same name
    @floors = floors
  end

  def area
    puts "this method was called on:"
    # self refers to the instance the method was called on
    p self
    # add to the parent method with the same name
    # self.width == @width
    super * @floors
  end

end


new_skyscraper = Skyscraper.new(80, 120, 100)

# p new_skyscraper

p new_skyscraper.area
