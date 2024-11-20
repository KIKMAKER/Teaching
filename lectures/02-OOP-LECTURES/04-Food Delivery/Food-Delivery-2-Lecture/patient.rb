class Patient

  attr_reader :name, :cured
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

# puts "creating patient Mike"
# mike = Patient.new(name: 'mike', cured: false)
# p mike
# puts "-------------------------"
# puts "curing patient Mike"
# mike.cure!
# p mike
# puts "-------------------------"
# puts "creating unknown patient"
# unknown_patient = Patient.new()
# p unknown_patient
# puts "-------------------------"
# puts "curing unknown patient"
# unknown_patient.cure!
# puts "-------------------------"
# puts "is the unknown patient cured?"
# p unknown_patient.cured
