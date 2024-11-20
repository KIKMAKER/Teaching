require_relative 'cake'

cake = Cake.new("chocolate", "caramel")
# p cake
p cake.flavour
vanilla_cake = Cake.new("vanilla", "strawberry")
# p vanilla_cake
puts "Making the vanilla one"
vanilla_cake.gluten_free
# p vanilla_cake
puts "The vanilla cake has #{vanilla_cake.bits} bits"

# p vanilla_cake.bits
vanilla_cake.bits = "Oreo"
# p vanilla_cake.bits
puts "making the chocolate one"
cake.with_gluten
# vanilla_cake.bake


p "------------"
vanilla_cake.bake
