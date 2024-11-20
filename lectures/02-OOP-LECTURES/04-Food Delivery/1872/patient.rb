class Patient
  attr_reader :name
  attr_accessor :room, :id # possible to get (READ) patient.room & change patent.room = a_room (WRITE)

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @cured = attributes[:cured] || false
    @blood_type = attributes[:blood_type]
    @room = attributes[:room] # the instance of room
  end

  def cured?
    @cured
  end

  def has_eaten
    @has_eaten = true
  end

  def cure!
    @cured = true
  end

end
john_doe = Patient.new
# # p john_doe
# puts "What is the patient name?"
# name = gets.chomp
# puts "What is #{name}'s blood type"
# blood_type = gets.chomp

# puts "is #{name} cured? [Y/N]"
# cured = gets.chomp
# cured = cured == "Y" ? true : false

# new_patient = Patient.new(name: name, blood_type: blood_type, cured: cured)
# p new_patient
# sam = Patient.new(name: "Sam")
# # p sam.name
# sam.cure!
# # p "It is #{sam.cured?} that sam is cured"

# sarah = Patient.new(name: "Sarah")
# # p "It is #{sarah.cured?} that sarah is cured"

# max = Patient.new(name: "Max", blood_type: "B-")
# # p max

# if new_patient.cured?
#   puts "Congrats on curing #{new_patient.name}"
# else
#   puts "Call a doctor"
# end
