require_relative 'lion'
require_relative 'meerkat'
require_relative 'warthog'

animals = []
puts "Creating the Lion King characters"
simba = Lion.new("Simba")
nala = Lion.new("Nala")
timon = Meerkat.new("Timon")
pumbaa = Warthog.new("Pumbaa")

animals << simba
animals << nala
animals << timon
animals << pumbaa

animals.each do |animal|
  puts animal.talk
end

puts timon.eat("scorpion")
puts pumbaa.eat("a grubby worm")
puts simba.eat("gazelle")


# puts Animal.phylla.join(', ')

p Animal::phylla
