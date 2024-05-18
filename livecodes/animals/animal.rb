class Animal
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def eat(food)
    print "#{self.name} eats a #{food}"
  end
end
