require_relative 'building'
require_relative 'butler'
class Castle < Building
# inheriting from a parent class gives all the same DATA and BEHAVIOUR to the child class
  attr_reader :butler

  def initialize(length, width, butler_name)
    super(length, width)
    @butler = Butler.new(butler_name, self)
  end

  def build_moat!
    @moat = true
  end

  def self.categories
    ["Medieval", "Gothic", "Roman", "Corinthian"]
  end
end

# puts Castle.categories


new_castle = Castle.new(1080, 12000, "Alfred")
p new_castle

p new_castle.butler
p new_castle.butler.name
# new_castle.categories

# p new_castle
new_castle.sell!

# built in method ! -> destructive
# it permanently changes the variable
name = "Alfred"
name.upcase!
p name
# p new_castle.sold?

new_castle.build_moat!
new_castle.width = 20000
# p new_castle
