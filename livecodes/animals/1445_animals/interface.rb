require_relative "lion"
require_relative "warthog"
require_relative "meerkat"

animals = []
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
