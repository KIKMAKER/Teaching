class Patient
  attr_reader :name, :age
  attr_accessor :room, :id
  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @age = attributes[:age]
    @blood_type = attributes[:blood_type]
    @cured = attributes[:cured] || false
  end

  # def room
  #   @room
  # end

  def cured?
    @cured
  end
end

sandy = Patient.new(name:"Sandy", age:35)

p sandy.room #=> the instance of room
# p sandy.age

# p sandy.cured?

john = Patient.new(name:"John", age:43, blood_type:"O-", cured: true)
# p john
peter = Patient.new()

# p peter
