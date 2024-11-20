class Cat
  attr_reader :name
  attr_writer :nickname

  # attributes which define the instances of the class' STATES
  def initialize(name, nickname)
    @name = name
    @favourite_foods = []
    @nickname = nickname
    @home = false
  end

  # methods define the instances of the class' BEHAVIOUR
  def meow
    puts "#{@name} says MEEEEOOOOOW"
  end

  def self.genus
    "Carnivorus"
  end

  # def nickname=(nickname)
  #   @nickname = nickname
  # end

  def call!
    puts "pstpstpst"
    @home = true
  end

  # def name
  #   @name
  # end

end
p my_cat = Cat.new("Peekay", "Peeks")
your_cat = Cat.new("Minky", "Minx")

my_cat.nickname= ("Pickle")
my_cat.call!
my_cat.meow
# p your_cat.genus

# p Cat.genus
# p my_cat.name
p my_cat
