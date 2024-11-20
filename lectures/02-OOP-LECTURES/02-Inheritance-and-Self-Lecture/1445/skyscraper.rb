require_relative 'building'
class Skyscraper < Building
  def initialize(name, width, length, number_of_floors)
    super(name, width, length)
    @number_of_floors = number_of_floors
  end
  # def initialize(name, width, length)
  #   super
  #   @number_of_floors = 10
  # end

  def floor_size
    super * @number_of_floors
  end

  def type_of_owner

    # "Self: #{self.name}"
    # @name

    if @number_of_floors > 10
      "this #{self.capitalized_name} is a skyscraper for Spider-Man."
      # "this #{captalized_name} is a skyscraper for Spider-Man."
    else
      "this #{self.capitalized_name} is a skyscraper for beginners"
    end
  end

  def capitalized_name
    @name.capitalize
  end

end
my_skyscraper = Skyscraper.new("Deaneville", 13, 25, 19)

my_skyscraper.name = "Kiki's Skyscraper"
p my_skyscraper.floor_size

p my_skyscraper.type_of_owner
