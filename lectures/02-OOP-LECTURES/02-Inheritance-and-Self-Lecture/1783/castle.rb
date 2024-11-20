require_relative 'building'
require_relative 'butler'

class Castle < Building
  # attr_reader :rooms, :length, :width
  attr_reader :butler

  def initialize(rooms, length, width, name)
    super(rooms, length, width)
    @butler = Butler.new(name, self)
  end

  def sell!
    super
    puts "Long live the King"
  end

  def self.categories
    ["Gothic", "Medieval", "Classic", "Ancient"]
  end

  # def butler
  #   @butler
  # end

end

new_castle = Castle.new(76, 60, 100, "Jeeves")
# p new_castle.butler
the_butler = new_castle.butler
# p the_butler
# p the_butler.name
# p the_butler.castle.rooms


puts "#{the_butler.name.downcase} cleans the castle with #{the_butler.castle.rooms} rooms"
puts "#{new_castle.butler.name.downcase} cleans the castle with #{new_castle.butler.castle.rooms} rooms"



# new_castle.sell!
# # new_castle.categories



# new_castle.check_for_spiderman

# p Castle.categories


# def self.now
#   Time.new(2024-08-22)
# end
