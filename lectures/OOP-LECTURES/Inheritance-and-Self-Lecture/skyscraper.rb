require_relative 'building'
class Skyscraper < Building

  def type_of_owner
    if @length > 50
      "This #{self.capitalized_name} is a skyscraper for Spider-Man."
    else
      #self is optional in this case
      "This #{capitalized_name} is a skyscraper for beginners"
    end
  end

  def capitalized_name
    @name.split.map { |word| word.capitalize }.join(" ")
  end
end

p my_skyscraper = Skyscraper.new("empire state building", 50, 50)

p my_skyscraper.type_of_owner
