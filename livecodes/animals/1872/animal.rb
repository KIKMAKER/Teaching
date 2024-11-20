class Animal
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def eat(food)
    return "#{@name} eats a #{food}."
  end


  def self.phylla
    return [
      "Porifera",
      "Cnidaria",
      "Ctenophora",
      "Platyhelminthes",
      "Rotifera",
      "Nematoda",
      "Annelida",
      "Mollusca",
      "Arthropoda",
      "Echinodermata",
      "Chordata",
      "Bryozoa",
      "Brachiopoda",
      "Chaetognatha",
      "Nemertea",
      "Tardigrada",
      "Onychophora",
      "Hemichordata",
      "Xenacoelomorpha"
    ]

  end
end

# Animal.phylla
# Animal::phylla
