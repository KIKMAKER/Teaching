class Animal
  # attr_reader :name
  # attr_writer :name
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def talk
    "#{@name}"
  end

  def eat(food)
    "#{self.name} eats a #{food}."
  end

  # def name
  #   @name
  # end

  # def name=(new_name)
  #   @name = new_name
  # end

end
