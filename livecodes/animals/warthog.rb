require_relative 'animal'
class Warthog < Animal
  def talk
    puts "#{super} grunts"
  end
end
