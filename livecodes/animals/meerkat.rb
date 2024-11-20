require_relative 'animal'
class Meerkat < Animal
  def talk
    puts "#{super} barks"
  end
end
