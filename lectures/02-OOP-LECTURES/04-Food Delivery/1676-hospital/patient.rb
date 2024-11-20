class Patient
  attr_reader :name
  attr_accessor :room, :id

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @cured = attributes[:cured] || false
    @blood_type = attributes[:blood_type]
  end

  def cure!
    @cured = true
  end

end


# mark = Patient.new({ name: "Mark", cured: false })
# p mark

# leo = Patient.new({ name: "Leo", cured: false, blood_type: "A"})
# p leo

# unknown = Patient.new()

# unknown.cure!
# p unknown
