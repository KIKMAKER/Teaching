require_relative 'lion'
require_relative 'meerkat'
require_relative 'warthog'
array = []
array << Lion.new("simba")
array << Lion.new("nala")
array << Meerkat.new("timone")
array << Warthog.new("pumbaa")

array.each do |animal|
  animal.talk

end


array.each do |animal|
  animal.eat("something")

end
