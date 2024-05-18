# file name is lowe_snake_case and the same as the class name
# class name is UpperCamelCase

class Cake
  # getters
  attr_reader :flavour
  # setters
  attr_writer :ingredients
  # accessor (read + write)
  attr_accessor :bits

  def initialize(flavour, bits)
    @flavour = flavour
    @bits = bits
    @ingredients = ["eggs", "flour", "sugar"]
  end

  def gluten_free
    @ingredients[1] = "coconut flour"
    bake
  end

  def with_gluten
    bake
  end

  # def bits
  #   return @bits
  # end

  def bits=(new_bits)
    @bits = new_bits
  end

  # def flavour
  #   @flavour
  # end

  # def ingredients
  #   @ingredients
  # end

  private

  def bake
    puts "It's in the oven"
    puts "baking the cake with:"
    @ingredients.each do |ingredient|
      puts "- #{ingredient}"
    end
    puts "DING! Cake is done"
  end

end

