require_relative 'animal'

class Lion < Animal
  def talk
    puts "#{@name} roars"
  end

  def eat(food)
    puts "#{super(food)}. Law of the jungle"

  end
end
