require_relative 'building'
class Skyscraper < Building

  def initialize(rooms, length, width, number_of_floors)
    super(rooms, length, width)
    @number_of_floors = number_of_floors
  end

  def floor_size
    super * @number_of_floors
  end

  def check_for_spiderman
    number_of_villians = rand(1..4)
    # number_of_villians = [1, 2, 3, 4].sample
    puts "He is on his way" if number_of_villians > 1
  end

  def sell!
    super
  end

end


new_skyscraper = Skyscraper.new(76, 60, 100, 52)
p new_skyscraper

new_skyscraper.floor_size
new_skyscraper.check_for_spiderman
another_skyscraper = Skyscraper.new(200, 20, 40, 100)
another_skyscraper.floor_size
