class Patient
  attr_reader :name
  attr_accessor :room, :id

  def initialize(attributes={})
    @id = attributes[:id]
    @name = attributes[:name]
    @cured = attributes[:cured] || false
    @blood_type = attributes[:blood_type]
  end

  def cure!
    @cured = true
  end
end

anne = Patient.new({name:"anne", cured: false})
# p anne

john = Patient.new({name:"john", cured:true})
# p john

sarah = Patient.new({name:"sarah", cured: false, blood_type: "A"})
# p sarah

unknown = Patient.new()
unknown.cure!
# p unknown
