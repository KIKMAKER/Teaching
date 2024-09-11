# MODEL of a patient
class Patient
  attr_reader :name, :cured
  attr_accessor :room, :id

  def initialize(attributes ={})
    @id = attributes[:id]
    @name = attributes[:name] || "john doe"
    @age = attributes[:age]
    @cured = attributes[:cured] || false
    @blood_type = attributes[:blood_type]
  end

  def cure!
    @cured = true
  end

  # def room
  #   @room
  # end

end

gary = Patient.new({name: "Gary", age: 43})
# p gary
sam = Patient.new(name:"Sammy", age: 27)
p sam
oscar = Patient.new(name:"Oscar", age:26, blood_type:"A+")
# p oscar
tc = Patient.new({})
# p tc

# p tc.name


