# require_relative 'castle'
class Butler
  attr_reader :name, :castle


  def initialize(name, castle)
    @name = name
    @castle = castle #instance of the castle class
  end
end

# jeeves_castle = Castle.new(10000, 20000)

# jeeves = Butler.new("Jeeves", jeeves_castle)

# p jeeves

# puts "Th butlers name is #{jeeves.name.upcase}, he cleans a castle that is #{jeeves.castle.area} square meters large."
