class CarbonatedDrink
  attr_reader :volume
  # attr_writer :colour

  attr_accessor :colour

  def initialize(colour, volume)
    @fizzy = true
    @colour = colour
    @volume = volume
  end

  def goes_flat
    @fizzy = false
    loses_bubles
  end

  def refizz
    if @colour == "pink"
      @fizzy = true
      puts "Your pink drink is fizzy courtesy of soda stream"
    else
      @fizzy = true
      puts "Your non-pink drink is also fizzy now"
    end
  end

  def drink_some
    # @volume = @volume - 10
    @volume -= 10
  end

  private

  def loses_bubles
    puts "you should keep the lid on"
  end

  # def colour=(new_colour)
  #   @colour = new_colour
  # end

  # def colour
  #   @colour
  # end

  # def volume
  #   @volume
  # end

end

# new_drink = CarbonatedDrink.new("orange", 300)
# p new_drink

# p new_drink.colour

# new_drink.colour = "pink"

# p new_drink
# # p new_drink.volume

# # # puts "leaving the lid off my new drink"
# # new_drink.goes_flat
# # p new_drink
# # puts "fizzing"
# # new_drink.refizz

# # p new_drink


# creme_soda = CarbonatedDrink.new("green", 150)
# p creme_soda.colour
# p creme_soda

# creme_soda.drink_some

# p creme_soda
