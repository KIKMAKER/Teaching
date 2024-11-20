class Animal
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def self.phyla
    return %w[Porifera Cnidaria Platyhelminthes Nematoda Annelida Mollusca
      Arthropoda Echinodermata Chordata]
  end

  def eat(food)
    "#{@name} eats a #{food}."
  end
end
