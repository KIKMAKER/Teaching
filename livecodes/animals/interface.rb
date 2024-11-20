require_relative 'meerkat.rb'
require_relative 'lion.rb'
require_relative 'warthog.rb'

animals = []

animals << Meerkat.new("Timon")
animals << Warthog.new("Pumbaa")
animals << Lion.new("Simba")
animals << Lion.new("Nala")

animals.each do |animal|
  animal.talk
end

puts Meerkat.new("Timon").eat("scorpion")

puts Lion.new("Simba").eat("springbok")

# Add an #eat(food) instance method in Animal which returns a sentence like “Timon eats a scorpion”. Then override this method for the Lion class, and return a sentence like “Simba eats a gazelle. Law of the Jungle!”
